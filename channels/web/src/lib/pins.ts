/**
 * Load W-local pin snapshots. Never import C SoT or bookkit from here.
 */
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
};

function titleFromMarkdown(md: string, fallback: string): string {
  const m = md.match(/^#\s+(.+)$/m);
  return m ? m[1].trim() : fallback;
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
  const contentMd = readFileSync(contentPath, "utf8");
  const contentHtml = marked.parse(contentMd, { async: false }) as string;
  return {
    id: release.chapter_id || id,
    dir,
    release,
    contentMd,
    contentHtml,
    title: titleFromMarkdown(contentMd, id),
  };
}

export function loadAllPins(): Pin[] {
  return listPinIds().map(loadPin);
}
