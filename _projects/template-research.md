---
# =====================================================================
# Research 프로젝트 템플릿 (project_type: physics)
#
# 프론트매터 필드 자체(어떤 필드가 실제로 렌더링되는지, ACTIVE/INACTIVE
# 구분, permalink 규칙 등)는 `template-project.md`가 단일 기준 문서다.
# 여기서는 그걸 반복하지 않고, Research 프로젝트에서 실제로 달라지는
# 부분(태그 방향성, link+paper 사용, 본문 섹션 구조)만 다룬다.
#
# published: false 인 문서는 홈 목록에 나오지 않는다(이 템플릿 포함).
# =====================================================================

title: "Project Title"
description: "One-line description for the card preview."

# 태그: 도구 이름(Python, NumPy 등)이 아니라 이 프로젝트에서만 성립하는
# 구체적 물리 개념/모델/기법을 쓴다 — "Python"은 거의 모든 프로젝트에
# 붙어서 관련성 신호가 안 되고(Related Projects가 태그 겹침으로만
# 판단하므로 무관한 프로젝트끼리 잘못 엮인다), 독자에게 이 프로젝트가
# 정확히 뭘 다루는지도 안 알려준다. 실제 예시(modular-commutator):
#   tags: ["Entanglement Bootstrap", "Chiral Topological Order", "Free Fermion"]
tags: ["<Specific Model or Material>", "<Specific Technique>", "<Specific Quantity>"]

order: 99
status: planned                        # completed | in-progress | planned
project_type: physics

# link + paper: Research 프로젝트는 사실상 이 쌍이 기본값이다 — 실제
# 연구 결과가 있다면 arXiv/저널 링크를 바로 달 것. 카드 설명 아래에
# 인용이 뜨려면 두 필드가 함께 있어야 한다 (하나만 있으면 아무것도
# 렌더링되지 않는다).
link: "https://arxiv.org/abs/..."
paper: "arXiv:2601.20963 (2026)"       # 또는 "PRB 111, 075167 (2025)"처럼
                                       # 저널 약칭 — arXiv와 비슷한
                                       # 간결함을 유지할 것

published: false                       # true 로 바꿔야 홈 목록에 노출

# 폴더 구조(_projects/<slug>/index.md)로 만든다면 반드시 명시:
# permalink: /projects/<slug>/
---

<!-- 상세 페이지 본문. 홈 카드에는 description 만 나오고, 아래 내용은
     /projects/<slug>/ 페이지에 렌더링된다. h2/h3 가 자동으로 목차가 된다.

     Research 프로젝트 섹션 계약:

     - Overview는 항상 필수. 무엇을 연구하는지 1문단 + 논문이 있으면
       기존 인용 형식("published with X and Y in *Journal* vol, page
       (year)" 또는 "the subject of [\"논문 제목\"](url) (arXiv:id,
       year)")으로 본문에 링크. 코드가 논문 전용 스크립트와 일반화된
       패키지로 나뉜다면 그 사실을 두 번째 문장으로 짧게 덧붙인다
       (spin-wave-theory 참고).

     - Motivation은 원칙적으로 필수 — 이 질문이 왜 자명하지 않은지,
       기존 방법으로 왜 안 되는지 1문단. 검증 자체가 결과인 소규모
       프로젝트(예: 이미 알려진 방법을 특정 계에 처음 적용해 확인하는
       경우)는 생략하고 Overview에 그 맥락을 한 문장으로 흡수해도 된다.

     - Method가 기본 섹션 이름이다. 계산/이론적 접근을 절차형 불릿으로
       적는다 — 서술형 문단이 아니라 "무엇을 가정하고, 무엇을 적용해서,
       무엇을 얻는지"의 단계로. 프로젝트가 시간이 지나며 여러 방법을
       추가할 예정이라면(예: spin-wave → tensor-network → RG로 확장),
       `## Method: <구성요소>`처럼 하위 제목을 반복해서 나중에 섹션을
       더 추가할 수 있게 열어둔다.

     - Results는 구체적 산출물이 있을 때만 쓴다. 무엇을 얻었는지 —
       계산된 물리량, 검증된 스케일링, 재현한 선행 결과 등. Method의
       불릿 하나가 사실상 결과 확인이기도 한 소규모 프로젝트는 별도
       섹션 없이 Method 불릿에 흡수해도 된다(modular-commutator 참고).

     - Links는 항상 필수 — 논문 인용 링크(위 frontmatter의 link/paper와
       중복되어도 됨, 카드에는 안 뜨고 상세 페이지에만 보이므로) +
       이 프로젝트에서 일반화되어 나온 코드가 있다면 그 저장소 링크. -->

## Overview

What this project studies, in a paragraph — the physical system, and a
prose link to the associated paper if one exists.

## Motivation

The open question this addresses, and why it doesn't reduce to an existing
or simpler approach.

## Method

- The concrete computational/theoretical approach, as steps.
- ...

## Results

What was obtained — computed quantities, verified scaling, reproduced
prior results.

## Links

- [Paper Title](https://arxiv.org/abs/...) — Journal/arXiv citation
