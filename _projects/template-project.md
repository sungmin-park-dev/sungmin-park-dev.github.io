---
title: "Project Title"
description: "One-line description for the card preview."
icon: fas fa-code              # FontAwesome icon for thumbnail
tags: [Python, Quantum, NumPy]
link: "https://github.com/sungmin-park-dev/repo-name"  # GitHub repo or "#"
order: 99                      # 카드 정렬 순서 (낮을수록 앞)
status: planned                # completed | in-progress | planned
published: false               # Set to true when ready to publish
# 이 파일처럼 _projects/ 바로 아래 flat .md 파일이면 permalink 불필요.
# 하지만 이미지 등 첨부파일이 필요해 _projects/<slug>/index.md 폴더 구조로
# 만든다면 반드시 permalink: /projects/<slug>/ 를 명시할 것 — 안 그러면
# /projects/:path/ 규칙이 index.md의 "index"까지 경로에 포함시켜
# 실제 페이지가 /projects/<slug>/index/ 에 생성되고 /projects/<slug>/는
# 404가 된다 (GitHub Pages에는 디렉터리 인덱싱이 없음).
# 선택 필드
# thumbnail: /assets/img/projects/project-name.png  # 커스텀 썸네일
# demo: "https://demo-url.com"                      # 라이브 데모 링크
---

<!-- 프로젝트 상세 페이지 본문 (선택) -->
<!-- 이 내용은 개별 프로젝트 페이지로 렌더링됨 -->

## Motivation

Why this project exists.

## Approach

Technical approach and methodology.

## Results

Key outcomes.

## Usage

```bash
git clone https://github.com/...
python main.py
```
