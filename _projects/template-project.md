---
# =====================================================================
# 프로젝트 프론트매터 계약
#
# 이 파일은 새 프로젝트를 만들 때 복사하는 템플릿이자, "어떤 필드가 실제로
# 렌더링되는가"의 단일 기준 문서다. 필드를 추가·제거하기 전에 아래 구분을
# 먼저 확인할 것.
#
#   [ACTIVE]   템플릿이 실제로 읽는 필드. 지우면 화면이 바뀐다.
#   [INACTIVE] 지금은 아무 템플릿도 읽지 않는 필드. 값을 적어도 화면에
#              나타나지 않는다. 되살리려면 각 항목에 적힌 "활성화 방법"을
#              따를 것.
#
# published: false 인 문서는 홈 목록에 나오지 않는다(이 템플릿 포함).
# =====================================================================

# --- [ACTIVE] ---------------------------------------------------------
title: "Project Title"                 # 카드 제목 + 상세 페이지 <h1>
description: "One-line description for the card preview."  # 카드 본문 한 줄
tags: [Python, Quantum, NumPy]         # 카드에 앞 3개, 상세 페이지 사이드바에 전체
order: 99                              # 정렬 순서 (낮을수록 앞). 날짜 대신 이걸 씀
status: planned                        # completed | in-progress | planned
                                       #   completed 만 제목이 링크가 됨
project_type: physics                  # physics | software — 홈 탭 분류.
                                       #   없으면 어느 탭에도 안 나옴. ml 은
                                       #   예약된 값(2026-07-28) — 아직 탭이
                                       #   없어서 이 값을 써도 어디에도 안
                                       #   나온다. index.html 상단 주석 참고.
published: false                       # true 로 바꿔야 홈 목록에 노출

# link + paper: 둘 다 있어야 카드 설명문 아래에 논문 링크가 뜬다.
#   하나만 있으면 아무것도 렌더링되지 않는다 (project-card.html의
#   {% if project.link and project.paper %} 참고).
# link: "https://arxiv.org/abs/..."     # 논문 URL
# paper: "arXiv:2601.20963 (2026)"      # 카드에 보일 짧은 인용 표기

# permalink: 폴더 구조로 만들 때만 [ACTIVE], flat 파일이면 불필요.
#   이 파일처럼 _projects/ 바로 아래 flat .md 면 생략해도 된다.
#   이미지 등 첨부파일 때문에 _projects/<slug>/index.md 폴더 구조로 만든다면
#   반드시 permalink: /projects/<slug>/ 를 명시할 것 — 안 그러면
#   /projects/:path/ 규칙이 index.md 의 "index"까지 경로에 포함시켜
#   실제 페이지가 /projects/<slug>/index/ 에 생기고 /projects/<slug>/ 는
#   404 가 된다 (GitHub Pages 에는 디렉터리 인덱싱이 없음).

# --- [INACTIVE] -------------------------------------------------------
# 아래 필드들은 현재 어떤 템플릿에서도 읽지 않는다. 기존 프로젝트 문서에
# 남아 있는 값들은 과거 Chirpy 테마 시절의 잔재이거나, 쓰려다 만 것이다.
# 지우지 않고 남겨두되, 살아있는 필드로 착각하지 말 것.
#
# icon: fas fa-code
#   FontAwesome 아이콘 이름. 카드가 아이콘 썸네일을 쓰던 시절의 필드.
#   활성화 방법: _includes/project-card.html 의 project-entry__row 안에
#   <i class="{{ project.icon }}"></i> 를 추가하고 _projects.scss 에
#   크기·색을 정의한다.
#
# categories: [Projects]
#   Chirpy 테마의 분류 체계. 지금은 project_type 이 그 역할을 한다.
#   활성화 방법: 없음 — project_type 과 중복이므로 되살리지 말 것.
#
# github_repo: "user/repo"
#   GitHub API(별 개수, 최근 커밋 등)를 붙이려고 남겨둔 필드.
#   활성화 방법: 빌드 시 API 호출이 필요하므로 Jekyll 플러그인이나
#   GitHub Actions 단계를 추가해야 한다. 정적 빌드만으로는 불가능.
#
# demo: "https://demo-url.com"
#   라이브 데모 링크. 활성화 방법: 새 필드를 만들기보다 본문
#   "## Links" 섹션에 직접 적는 편이 낫다.
#
# thumbnail: /assets/img/projects/name.png
#   카드용 커스텀 이미지. 현재 디자인은 카드에 이미지를 쓰지 않는다
#   (DESIGN.md 의 Trace 행 규칙). 되살리려면 그 규칙부터 재검토할 것.
# ----------------------------------------------------------------------
---

<!-- 상세 페이지 본문. 홈 카드에는 description 만 나오고, 아래 내용은
     /projects/<slug>/ 페이지에 렌더링된다. h2/h3 가 자동으로 목차가 된다. -->

## Overview

What this project is, in a paragraph.

## Motivation

Why it exists — the question it answers.

## Implementation

How it works.

## Links

- [Repository](https://github.com/user/repo)
