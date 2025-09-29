#!/usr/bin/env bash
# Bootstrap labels and milestones for this repo
# Usage: from repo root => bash bootstrap.sh
set -euo pipefail

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI(gh)가 필요합니다: https://cli.github.com/"
  exit 1
fi

owner_repo=$(gh repo view --json nameWithOwner -q .nameWithOwner 2>/dev/null || true)
if [ -z "$owner_repo" ]; then
  echo "먼저 'gh repo clone <owner>/<repo>' 또는 'gh repo create'로 리포지토리를 준비하세요."
  exit 1
fi

echo "Repository: $owner_repo"

# Create labels
echo "== 라벨 생성 =="
jq -c '.[]' labels.json | while read -r item; do
  name=$(echo "$item" | jq -r .name)
  color=$(echo "$item" | jq -r .color)
  # try create; if exists, update color
  gh label create "$name" --color "$color" --force || gh label edit "$name" --color "$color"
done

echo "== 마일스톤 생성 =="
# Weeks and midterms
gh api repos/:owner/:repo/milestones -f title='W1 (Sep29–Oct5)'   -f due_on='2025-10-05T23:59:59Z' >/dev/null || true
gh api repos/:owner/:repo/milestones -f title='W2 (Oct6–Oct12)'   -f due_on='2025-10-12T23:59:59Z' >/dev/null || true
gh api repos/:owner/:repo/milestones -f title='W3 (Oct13–Oct19)'  -f due_on='2025-10-19T23:59:59Z' >/dev/null || true
gh api repos/:owner/:repo/milestones -f title='Midterms (Oct20–Oct23)' -f due_on='2025-10-23T23:59:59Z' >/dev/null || true

echo "완료! 이제 New issue → '📚 Study Task' 템플릿으로 과제를 등록하세요."
