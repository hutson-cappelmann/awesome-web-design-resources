# Candidates — not yet vendored

Reviewed 2026-08-28. Items here are **not** in the repo yet; each is listed with
what it adds, why it was or wasn't added, and the decision needed.

## Strong candidates to vendor (license-checked)

| Skill | Upstream | License | Adds | Status |
|---|---|---|---|---|
| `web-artifacts-builder` | [anthropics/skills](https://github.com/anthropics/skills/tree/main/skills/web-artifacts-builder) | Apache-2.0 (per-skill LICENSE.txt) | Anthropic's official workflow for building multi-component HTML artifacts (React + Tailwind + shadcn/ui) | ✅ vendored 2026-08-28 at commit `3b3fad9` |
| `theme-factory` | [anthropics/skills](https://github.com/anthropics/skills/tree/main/skills/theme-factory) | Apache-2.0 | 10 preset font+color themes + on-the-fly theme generation for slides/docs/landing pages; pairs directly with the DESIGN.md workflow in AGENTS.md | ✅ vendored 2026-08-28 at commit `3b3fad9` |

Notes:
- `anthropics/skills` is the upstream of our already-vendored `frontend-design`
  skill (that one ships under Anthropic Commercial Terms despite the repo's
  Apache-2.0 — its per-skill LICENSE.txt says commercial). The two above have
  proper Apache-2.0 LICENSE.txt files and are safe to vendor with attribution.
- Not vendored from that repo: `algorithmic-art`, `canvas-design`,
  `slack-gif-creator` (adjacent, not web-design-core), doc skills (out of
  scope).

## Better referenced than vendored (version-sensitive or huge)

| Resource | Why referenced only |
|---|---|
| **Vercel Next.js agent skills** — `vercel/next.js` `canary/skills` (old home `vercel-labs/next-skills` is deprecated) + `npx @next/codemod@canary agents-md` which generates an `AGENTS.md`/`CLAUDE.md` pointing at version-bundled docs | Version-matched to the Next.js release; vendoring a snapshot drifts. AGENTS.md §"Frameworks" should tell agents to run the codemod in a Next.js project instead |
| **21st.dev** (https://21st.dev) — open-source community shadcn registry (243+ registries, `npx shadcn` installable, Magic UI publishes here too) | It's a live registry, not a repo; cataloged in `docs/resources.md` |

## Services (not for the repo — need accounts/seats; listed for completeness)

| Service | Access | Notes |
|---|---|---|
| **Figma MCP server** (official) | Figma **Dev or Full seat** (paid plan) | Pulls design-system context into the agent; write-to-canvas currently in free beta but will be usage-priced. Figma seat is required — so this is "paid", flagged only because the MCP itself has no per-call cost until beta ends |
| **Figma Context MCP** (third-party, free) | Free | Extracts design context from `.fig` files without a Figma seat — use this if the goal is Figma→code without paying |
| **Google Stitch** | Free web app | Already covered by `stitch-design-taste` skill; service itself doesn't need to go in the repo |
| **CodeRabbit** | Free tier | Design/slop review in CI; optional QA layer, not design knowledge |

## Free asset sources (candidates for a one-line entry in resources.md)

- **Iconify** (https://iconify.design) — 200k+ open icons, one API
- **Google Fonts** — already covered via `ui-ux-pro-max` data (`google-fonts.csv`)
- **Unsplash / Pexels APIs** — free-tier stock imagery (used by slide/brand skills)
- **simpleicons / SVGRepo** — official brand logos (already referenced by
  `huashu-design` brand-asset-protocol)

## Deliberately excluded (paid / per user rule)

- v0 (paid), Magic UI Pro ($199), Aceternity all-access ($249), Tailark Quartz
  paid kit, shadcnblocks Pro, Frontend Masters, Refactoring UI, Untitled UI Pro
  tier — none of these appear as recommendations anywhere in this repo.
