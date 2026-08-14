// Produkt W only. Do not read packages/bookkit or src/chapters.
import { defineConfig } from "astro/config";
import { fileURLToPath } from "node:url";

const root = fileURLToPath(new URL(".", import.meta.url));

export default defineConfig({
  root,
  srcDir: "./src",
  publicDir: "./public",
  outDir: "./dist",
  trailingSlash: "always",
  server: {
    host: "127.0.0.1",
    port: 4321,
  },
  vite: {
    server: {
      fs: { allow: [root] },
    },
  },
});
