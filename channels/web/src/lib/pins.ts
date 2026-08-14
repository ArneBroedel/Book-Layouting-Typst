/**
 * Load W-local pin snapshots. Never import C SoT or bookkit from here.
 */
import { createHash } from "node:crypto";
import { readdirSync, readFileSync, existsSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import { parse as parseYaml } from "yaml";
import { marked } from "marked";

const pinsRoot = join(dirname(fileURLToPath(import.meta.url)), "../../pins");

export type ChannelStatus = "pending" | "built" | "proofed" | "n/a";

export type ReleasePackage = {
  schema_version: string;
  chapter_id: string;
  content_revision: string;
  channel_scope: "print" | "web" | "both";
  assets?: { id: string; status: string; path?: string }[];
  accept_paths?: string[];
  channels?: {
    print?: { status: string; outputs?: string[] };
    web?: { status: ChannelStatus; outputs?: string[] };
  };
};

export type Pin = {
  id: string;
  dir: string;
  release: ReleasePackage;
  contentMd: string;
  contentHtml: string;
  title: string;
  sourceNote: string | null;
};

function titleFromMarkdown(md: string, fallback: string): string {
  const m = md.match(/^#\s+(.+)$/m);
  return m ? m[1].trim() : fallback;
}

function assertSha256Pin(revision: string, content: Buffer, id: string): void {
  const m = /^sha256:([0-9a-fA-F]{64})$/.exec(revision.trim());
  if (!m) return;
  const actual = createHash("sha256").update(content).digest("hex");
  if (actual !== m[1].toLowerCase()) {
    throw new Error(
      `pin ${id}: content.md sha256 ${actual} != release content_revision ${revision}`,
    );
  }
}

export function listPinIds(): string[] {
  if (!existsSync(pinsRoot)) return [];
  return readdirSync(pinsRoot, { withFileTypes: true })
    .filter((d) => d.isDirectory() && !d.name.startsWith("."))
    .map((d) => d.name)
    .sort();
}

export function loadPin(id: string): Pin {
  const dir = join(pinsRoot, id);
  const releasePath = join(dir, "release.yaml");
  const contentPath = join(dir, "content.md");
  if (!existsSync(releasePath) || !existsSync(contentPath)) {
    throw new Error(`pin ${id}: need release.yaml and content.md`);
  }
  const release = parseYaml(readFileSync(releasePath, "utf8")) as ReleasePackage;
  if (release.channel_scope !== "web" && release.channel_scope !== "both") {
    throw new Error(
      `pin ${id}: channel_scope=${release.channel_scope} is not web|both — W must not render print-only accepts`,
    );
  }
  const contentBuf = readFileSync(contentPath);
  assertSha256Pin(release.content_revision, contentBuf, id);
  const contentMd = contentBuf.toString("utf8");
  const contentHtml = marked.parse(contentMd, { async: false }) as string;
  const sourcePath = join(dir, "SOURCE.md");
  let sourceNote: string | null = null;
  if (existsSync(sourcePath)) {
    const src = readFileSync(sourcePath, "utf8");
    const soT = src.match(/\*\*C body \(SoT\)\*\*\s*\|\s*`([^`]+)`/);
    const freeze = src.match(/\*\*H1 freeze\*\*\s*\|\s*`([^`]+)`/);
    sourceNote = [soT?.[1], freeze?.[1]].filter(Boolean).join(" · ") || "see SOURCE.md";
  }
  return {
    id: release.chapter_id || id,
    dir,
    release,
    contentMd,
    contentHtml,
    title: titleFromMarkdown(contentMd, id),
    sourceNote,
  };
}

export function loadAllPins(): Pin[] {
  return listPinIds().map(loadPin);
}
