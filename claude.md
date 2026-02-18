# emergence - Claude Code 컨텍스트

## 프로젝트 개요

Jekyll 기반 포트폴리오 사이트. 커스텀 디자인 시스템(emergence)으로 UI 전체를 구현.
GitHub Pages 호스팅: `sungmin-park-dev.github.io`

디자인 철학은 `DESIGN.md` 참조.

---

## 레이아웃 시스템

| 파일 | 용도 | 비고 |
|------|------|------|
| `_layouts/base.html` | HTML shell (head, body만) | FontAwesome CDN 포함 |
| `_layouts/minimal.html` | 홈페이지 전용 | `base` 상속 |
| `_layouts/custom-page.html` | 탭 페이지 공통 틀 | nav + container, `base` 상속 |
| `_layouts/post.html` | 개별 콘텐츠 페이지 | TOC 사이드바 + 본문, `base` 상속 |

탭 페이지(`_tabs/*.md`)는 `layout: custom-page`를 사용하며,
HTML/Liquid 템플릿을 파일 안에 직접 포함함 (별도 레이아웃 파일 없음).

---

## Chirpy 테마 디커플링 (완료)

Chirpy gem을 완전히 제거하고 순수 Jekyll + 개별 플러그인으로 전환 완료.

- `Gemfile`: `jekyll-theme-chirpy` 제거, `jekyll` + 개별 플러그인 사용
  - `jekyll-archives`, `jekyll-seo-tag`, `jekyll-sitemap`, `jekyll-feed`, `jekyll-paginate`
  - Ruby 3.3.6 + Jekyll 4.3 사용
- `_config.yml`: `theme:` 라인 제거, `plugins:` 섹션 추가, Chirpy 전용 설정 제거
- `_sass/emergence/_chirpy-override.scss`: 삭제 완료
- `_plugins/posts-lastmod-hook.rb`: 로컬 파일로 독립 동작
- **중요**: SCSS 파일은 UTF-8 인코딩 (`sass.encoding: utf-8` 설정, `LANG=en_US.UTF-8` 환경변수)

---

## SCSS 구조

```
assets/css/emergence.scss        ← 빌드 진입점 (@import만, 스타일 코드 없음)
                                    Jekyll이 이 파일을 emergence.css로 컴파일
_sass/emergence/
  ├── _variables.scss            ← 디자인 토큰 (색상, 폰트, 간격 등)
  ├── _base.scss                 ← 리셋 및 유틸리티
  ├── _typography.scss           ← 타이포그래피
  ├── _components.scss           ← 재사용 컴포넌트 (카드, 버튼, 태그 등)
  ├── _navigation.scss           ← 상단 네비게이션
  └── pages/                     ← 페이지별 스타일
      ├── _home.scss
      ├── _projects.scss
      ├── _notes.scss
      ├── _readings.scss
      ├── _about.scss
      └── _post.scss
```

**규칙:**
- 새 스타일은 항상 `_sass/emergence/` 쪽 파셜 파일에 추가
- `assets/css/emergence.scss`에는 `@import` 외 코드 추가 금지
- 새 파셜 추가 시 `emergence.scss`에 `@import` 한 줄 추가 필요
- 페이지별 스타일은 `pages/` 하위에 별도 파일로 분리

---

## 콘텐츠 컬렉션

`_config.yml`에 등록된 Jekyll 컬렉션. 파일만 추가하면 해당 탭에 자동 반영됨.

| 컬렉션 | 폴더 | 탭 | permalink |
|--------|------|-----|-----------|
| `site.projects` | `_projects/` | `/projects/` | `/projects/:path/` |
| `site.notes` | `_notes/` | `/notes/` | `/notes/:path/` |
| `site.readings` | `_readings/` | `/readings/` | `/readings/:path/` |

**하위 폴더 구조:**
```
_projects/
  ├── commutator-entropy/index.md
  ├── spin-wave-theory/index.md
  └── future-project/index.md

_notes/
  ├── physics/
  ├── machine-learning/
  └── quantum-computing/

_readings/
  ├── papers/
  └── tech/
```

**새 컬렉션 추가 시** `_config.yml`의 `collections:` 및 `defaults:` 섹션에 등록 필수.

---

## 탭 페이지 구조

`_tabs/*.md` 파일은 front matter + HTML/Liquid를 직접 포함.
탭별로 완전히 다른 레이아웃을 사용하므로 별도 레이아웃 파일로 분리하지 않음.

| 파일 | 데이터 소스 | 주요 CSS 클래스 |
|------|------------|----------------|
| `_tabs/projects.md` | `site.projects` | `.projects-grid`, `.project-card` |
| `_tabs/notes.md` | `site.notes` | `.notes-container`, `.note-card` |
| `_tabs/readings.md` | `site.readings` | `.archive-container`, `.year-section` |
| `_tabs/about.md` | 정적 HTML | `.about-content`, `.profile-card` |

---

## 빌드 및 배포

- **로컬:** `bundle exec jekyll s -l` (livereload)
- **배포:** `main` 브랜치 push → GitHub Actions 자동 빌드/배포
- **HTML 검증:** `bundle exec htmlproofer _site --disable-external`
- **주의:** HTML Proofer가 빌드 실패의 주요 원인. 빈 `href`, 잘못된 링크 주의.

---

## 자주 발생하는 이슈

- **카테고리/태그에 한글 포함 시** HTML Proofer 오류 가능 → 영문 사용 권장
- **빈 `<a href="">` 태그** → HTML validation 실패
- **새 collection 추가 후 `site.xxx` 미인식** → `_config.yml` 등록 확인
- **SCSS 변수 미인식** → `@import 'emergence/variables'` 순서 확인 (항상 최상단)
