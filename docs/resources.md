# Curated resources — page/block builders, animation layers, component bases

Companion catalog to the vendored skills in `skills/`. These are **references,
not vendored code**: clone the skill pack for *how to design*, reach here for
*what to copy from*. Free / open-source only — if it costs money it doesn't
belong in this list. URLs verified reachable 2026-08-27.

## Page / block builders (whole sections, not just widgets)

| Resource | URL | What you get | License / cost |
|---|---|---|---|
| **shadcnblocks** | https://shadcnblocks.com | 1,500+ blocks + 1,200 components, visual builder, Figma kit | Free tier |
| **blocks.so** | https://blocks.so | 60+ clean shadcn page blocks (login, pricing, dashboards) | Free |
| **Tailark** | https://tailark.dev | Polished marketing-site sections + Quartz kit | Free |
| **Shadcn.io** | https://www.shadcn.io | Large shadcn block marketplace (many free blocks) | Free blocks |

## Animation / "wow factor" layers (pair with shadcn)

| Resource | URL | What you get | License / cost |
|---|---|---|---|
| **Magic UI** | https://magicui.dev | 150+ animated components (~21k GitHub stars) — most popular | MIT |
| **Aceternity UI** | https://aceternity.com | Flashy hero effects: 3D cards, spotlight, bento grids (free core) | Free core |
| **React Bits** | https://reactbits.dev | Animated backgrounds & effects | MIT |
| **Cult UI** | https://cultui.dev | 78+ free animated components | Free |
| **Animate UI** | https://animateui.com | Animates the shadcn components you already have | MIT |

## Same philosophy, different base (not just React)

| Resource | URL | What you get | License / cost |
|---|---|---|---|
| **daisyUI** | https://daisyui.com | Pure-CSS Tailwind components; React/Vue/Svelte/static HTML | Free |
| **Origin UI / COSS** | https://originui.io | 484 "particles" on Base UI, explicitly AI-friendly | Free |
| **Untitled UI** | https://untitledui.com | Pro design system, 100% free tier | Free tier |
| **21st.dev** | https://21st.dev | Open-source community shadcn registry: 243+ registries, `npx shadcn`-installable (Magic UI also publishes here) | Free |

## Free asset sources

| Resource | URL | What you get | License / cost |
|---|---|---|---|
| **Iconify** | https://iconify.design | 200k+ open icons, one API, any framework | Open (per-icon) |
| **Google Fonts** | https://fonts.google.com | Fonts (also shipped as data in `ui-ux-pro-max`) | Free (OFL) |
| **Unsplash / Pexels** | https://unsplash.com / https://www.pexels.com | Free-tier stock imagery via API | Free tier |
| **Simple Icons / SVGRepo** | https://simpleicons.org | Official brand logos (also used by `huashu-design` brand protocol) | Open |

## Framework agent skills (version-sensitive — run in-project, don't vendor)

| Resource | URL | Notes |
|---|---|---|
| **Vercel Next.js agent skills** | https://github.com/vercel/next.js (branch `canary`, path `skills`) | Lives inside the Next.js repo so it's version-matched; in a Next.js 16.3+ project run `npx @next/codemod@canary agents-md` to generate `AGENTS.md`/`CLAUDE.md` pointing at bundled docs. The old home `vercel-labs/next-skills` is deprecated |

## Design-to-code services (free options only)

| Service | URL | Notes |
|---|---|---|
| **Figma Context MCP** (third-party) | via Figma MCP catalog / GitHub | Extracts design context from `.fig` files so an agent can code from a design **without a Figma paid seat** — the free path |
| **Google Stitch** | https://stitch.withgoogle.com | Free web app for AI UI generation; its design rules are already vendored here as the `stitch-design-taste` skill |

> Figma's **official MCP server** requires a Figma Dev or Full (paid) seat —
> excluded from the free list on purpose. Write-to-canvas is in a free beta
> that will become usage-priced.

## Component foundations (the base kit everything above builds on)

| Resource | URL | What you get | License / cost |
|---|---|---|---|
| **shadcn/ui** | https://ui.shadcn.com | The v0-default stack: copy-paste React components + Tailwind | Free (MIT components) |
| **Tailwind CSS** | https://tailwindcss.com | Utility CSS framework | Free (MIT) |
| **Base UI** | https://base-ui.com | Unstyled, accessible primitives (Origin UI's base) | Free (MIT) |

## Design systems & token specs

| Resource | URL | What you get | License / cost |
|---|---|---|---|
| **Google DESIGN.md** (`@google/design.md`) | see `design-md` skill on this machine | Machine-readable design-token spec format | Free |
| **popular-web-designs** (54 real design systems as HTML/CSS) | vendored as a skill on this machine | Stripe/Linear/Vercel-style systems to imitate | Free |

## Suggested default stack for a new shadcn-based site

1. Base: **shadcn/ui** + **Tailwind** (the v0 stack).
2. Sections: copy from **blocks.so** (clean) or **shadcnblocks** (volume + Figma).
3. Motion: **Magic UI** for the standard set; **Aceternity** free core for
   hero flash; **Animate UI** if you just want motion on existing shadcn
   components.
4. Design language: run a taste skill from `skills/` (e.g. `design-taste-frontend`
   or `minimalist-ui`) so the site has a point of view before blocks get pasted.
5. Tokens: keep a `DESIGN.md` (Google spec) at repo root so any agent can
   re-derive the system.
