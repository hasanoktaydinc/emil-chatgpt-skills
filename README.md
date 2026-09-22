# emil-chatgpt-skills

Wrapper marketplace for packaging the skills from:

https://github.com/emilkowalski/skills

## Expected structure

```text
emil-chatgpt-skills/
├── .agents/
│   └── plugins/
│       └── marketplace.json
└── plugins/
    └── emil-skills/
        ├── .claude-plugin/
        │   └── plugin.json
        └── skills/
            ├── animate/
            ├── animate-expo/
            ├── emil-design-eng/
            ├── improve-animations/
            ├── review-animations/
            └── ...
```

## Add Emil's skills

Clone Emil's repository next to this folder:

```bash
git clone https://github.com/emilkowalski/skills.git emil-source
```

Then copy all skill folders:

```bash
rm -rf plugins/emil-skills/skills
cp -R ../emil-source/skills plugins/emil-skills/skills
```

Commit and push:

```bash
git add .
git commit -m "Add Emil Kowalski skills"
git push
```

## Import into ChatGPT / Codex

Use the repository root URL:

```text
https://github.com/hasanoktaydinc/emil-chatgpt-skills
```

Path: leave blank

Branch: `main` (or leave blank if the UI resolves the default branch)

## Why this wrapper exists

The original Emil Kowalski skills repository contains skill folders, but it is not structured as a ChatGPT/Codex marketplace root. This wrapper adds a supported marketplace manifest while preserving the upstream skills unchanged under `plugins/emil-skills/skills`.
