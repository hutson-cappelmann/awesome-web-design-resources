---
name: web-design
description: Use when building, redesigning, or auditing any webpage, landing page, HTML artifact, brand kit, deck, banner, or UI image-gen. Routes to the right anti-slop / taste / production skill, then the tools catalog — do not skip to blocks.
version: 1.0.0
author: Hutson / Nix
license: MIT
metadata:
  hermes:
    tags: [web-design, anti-slop, router, frontend, umbrella]
    related_skills: [design-taste-frontend, local-service-business, hallmark, frontend-design, ui-ux-pro-max, web-design-engineer, full-output-enforcement, web-artifacts-builder, theme-factory]
---

# Web Design (umbrella)

Router for this pack. Load this first on any visual web work, then load **only** the child skills this file names. Do not dump every leaf into context.

Repo root: `awesome-web-design-resources`. Child skills live at `skills/<name>/SKILL.md`. Resource catalog: `docs/resources.md`.

## When to Use

- Landing pages, marketing sites, portfolios, redesigns, audits
- One-off HTML artifacts, dashboards, decks, banners, long-form articles
- Brand / logo / identity boards (image-gen) and UI reference images
- “Make it not look AI” / anti-slop / taste / Awwwards / brutalist / minimal

Do not use for:

- Backend, infra, or auth-only work
- Durable production deploys (use the host’s deploy skill, not this pack)

## Hard contract (every task)

1. **Design read first.** One line: page kind, audience, vibe, system/family. If the brief is genuinely ambiguous, ask one question — then proceed.
2. **Load the named child `SKILL.md` in full** before writing markup. This file is a pointer, not a substitute.
3. **Taste before paste.** `docs/resources.md` is copy-from *after* a design language exists. Unopinionated shadcn/Magic UI dumps are slop.
4. **Leave a `DESIGN.md`** at the project root (palette, type, spacing, motion, tone) so the next session does not guess.
5. **Layer `full-output-enforcement`** whenever you emit code. No truncated files, no `// ... rest`, no placeholder comments.
6. **Audit before calling it done.** Default: `hallmark` slop-tests (or its 10-tell cousin in `claude-design` if that skill is loaded). Compositional tells require re-layout, not recolor.

## Route (pick 1–3, then stop)

| You want to… | Load |
|---|---|
| Default landing / product / portfolio (anti-slop) | `design-taste-frontend` |
| Local trade / service business (barber, landscaper, plumber, salon) | `local-service-business` |
| Stricter Anthropic-official aesthetic rules | `frontend-design` (Hermes alias: `anthropic-frontend-design`) |
| Full slop-test audit / redesign / study DNA | `hallmark` |
| Data-driven tokens (styles, palettes, type, UX rules, GSAP) | `ui-ux-pro-max` then `design-system` |
| Stunning-bar browser artifact (page, dashboard, deck, viz) | `web-design-engineer` |
| Multi-component React + Tailwind + shadcn HTML artifact | `web-artifacts-builder` |
| Consistent font+color theme across slides/docs/pages | `theme-factory` |
| Match a screenshot / reference image in code | `image-to-code` |
| Upgrade an existing mediocre site | `redesign-existing-projects` |
| Awwwards / editorial marketing | `gpt-taste` |
| Quiet utilitarian minimal | `minimalist-ui` |
| Swiss/brutalist / experimental | `industrial-brutalist-ui` |
| Premium soft-UI | `high-end-visual-design` |
| Google Stitch semantic rules | `stitch-design-taste` |
| High-fi HTML prototypes, 3 direction drafts first | `huashu-design` |
| Brand kit / logo / identity (images, no code) | `brandkit` and/or `brand` |
| Deck / presentation | `slides` (+ `design-system` or `theme-factory`) |
| Banner / hero marketing asset | `banner-design` |
| Long-form article | `beautiful-article` |
| Narrated click-through web video | `web-video-presentation` |
| UI reference images (web / mobile / GPT Image 2) | `imagegen-frontend-web`, `imagegen-frontend-mobile`, `gpt-image-2` |
| Pinned v1 taste behavior | `design-taste-frontend-v1` |
| Icons / CIP scripts | `design` |
| Canvas-font UI styling | `ui-styling` |
| Local KB retrieval (not design-specific) | `kb-retriever` |
| Completeness gate on emitted code | `full-output-enforcement` (always layer) |

Default combo for a new designed page:

`design-taste-frontend` + `ui-ux-pro-max` (tokens) + `full-output-enforcement` → `hallmark` before ship.

If the user named a style, swap the taste skill (`minimalist-ui` / `gpt-taste` / `high-end-visual-design` / `industrial-brutalist-ui`) for `design-taste-frontend`. Keep the tokens + completeness + audit layers.

## Hermes-local companions (this machine)

Not in this pack. Load after the router when they apply:

| Skill | Use when |
|---|---|
| `quickpage-publish` | Host a one-off self-contained `index.html` at `https://pages.htsn.io/p/<slug>/` |
| `claude-design` | One-off HTML process/taste when the pack’s production skills are overkill (reports, dashboards, review pages) |
| `popular-web-designs` | Match a known public system (Stripe, Linear, Vercel, …) — vocabulary only, still run a taste skill |
| `design-md` | The deliverable is a token spec file, not a rendered page |
| `sketch` | Throwaway HTML mockups, 2–3 variants to compare |
| `analog-card-daily-ui` | Hutson Analog / Today-card physical-card UI |

Quickpages constraint: pack skills often assume React/Next + Tailwind + a bundler. A quickpage is **one self-contained `index.html`** (inline CSS/JS, system or self-hosted fonts, no npm). Take the design *language* from the child skill; express it in native CSS.

There is no `sites.htsn.io` skill. One-off generated pages go through `quickpage-publish` → `pages.htsn.io`. Durable apps use the host deploy skill.

## Tools and libraries

Canonical catalog: `docs/resources.md` (free/open-source only). Do not invent paid stacks.

Default new-site stack, **after** a taste skill has committed a language:

1. Base: **shadcn/ui** + **Tailwind** (or daisyUI / Base UI when the child skill says so)
2. Sections: **blocks.so** (clean) or **shadcnblocks** (volume) — paste only what matches the design read
3. Motion: **Magic UI** standard; **Aceternity** free core for one hero moment; **Animate UI** to motion existing shadcn
4. Icons: **Iconify**; type: **Google Fonts** (also in `ui-ux-pro-max` data)
5. Tokens: `DESIGN.md` at repo root (Google spec via `design-md` when the file itself is the deliverable)

Scripts (from repo root, or the same relative layout after `install.sh`):

```bash
python3 skills/ui-ux-pro-max/scripts/search.py "saas landing page" --design-system -p "Name"
python3 skills/design/scripts/icon/generate.py --prompt "settings gear" --style outlined
node skills/brand/scripts/sync-brand-to-tokens.cjs --dry-run
```

## Workflow

1. State the design read (one line).
2. From the route table, name 1–3 child skills. `skill_view` each. Follow *their* gates.
3. If tokens would help, run `ui-ux-pro-max` search before choosing type/palette.
4. Write `DESIGN.md` (or lock DNA via `hallmark study`) before bulk markup.
5. Build in the target medium (repo stack, or single-file HTML for quickpages).
6. Layer `full-output-enforcement`. Run `hallmark` audit (or the claude-design 10-tell score) and fix compositional issues by re-layout.
7. If Hutson asked for a link, `quickpage-publish` and return the URL.

## Common Pitfalls

1. **Loading every leaf.** Context bloat. Router + 1–3 children.
2. **Pasting blocks first.** That is how sites become identical. Taste skill, then catalog.
3. **Treating this file as the design system.** It has no palette, type, or layout. The child skill does.
4. **Calling `frontend-design` on this Hermes profile without the alias.** Category folder `~/.hermes/skills/frontend-design/` holds `analog-card-daily-ui`. Use `anthropic-frontend-design`.
5. **Shipping Inter + indigo gradient + 3 feature cards.** That is the LLM default. The design read must rule it out or justify it.
6. **Quickpage with a bundler.** No npm. Inline CSS/JS.
7. **Relicensing `frontend-design`.** Anthropic commercial. Use it; do not redistribute as MIT.

## Verification Checklist

- [ ] One-line design read stated before code
- [ ] Named child `SKILL.md` loaded in full (not just this router)
- [ ] `DESIGN.md` (or hallmark DNA) exists for anything that should survive a session
- [ ] `docs/resources.md` used only after the language was committed
- [ ] `full-output-enforcement` applied to emitted code
- [ ] Slop audit run; compositional tells fixed by re-layout
- [ ] If a hosted link was requested: `quickpage-publish` URL returned, not a local path only
