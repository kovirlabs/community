#!/usr/bin/env bash
# One-time setup of kovirlabs/community. Run from this directory after the repo exists:
#   gh repo create kovirlabs/community --public --source . --push
#   gh repo edit kovirlabs/community --enable-discussions
#   ./scripts/setup.sh
# Discussion categories can't be created through the API. Afterwards, in the GitHub UI
# (Settings → General → Discussions → Set up / Categories), create:
#   Ideas (Open-ended discussion; slug must be "ideas" to match DISCUSSION_TEMPLATE/ideas.yml),
#   Q&A (Question / Answer), Announcements (Announcement), Show and tell (Open-ended discussion).
# Then point org discussions here: github.com/organizations/kovirlabs/settings/discussions.
set -euo pipefail
R=kovirlabs/community
gh label create "status: under-review" -R $R --color BFB7AD --description "New; waiting for the next team review" --force
gh label create "status: accepted"     -R $R --color 3A787A --description "The kovir.org team agreed Kovir Labs will take this on" --force
gh label create "status: in-progress"  -R $R --color DFAD05 --description "Being built" --force
gh label create "status: shipped"      -R $R --color 2A5657 --description "Released" --force
gh label create "status: not-now"      -R $R --color 8D440F --description "Not taking this on for now" --force
gh label create "source: form"         -R $R --color F1EEE9 --description "Posted from the website contact form, with permission" --force
gh label create "source: kovir-client" -R $R --color FC7A57 --description "Raised by an organization Kovir works with" --force
