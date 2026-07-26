## 구현 완료: image-led Deep Glacier / Stellar Field

이전 코멘트의 옵션 C를 철회하고, 확정된 방향대로 옛 브랜치의 빙하·우주 이미지를
light/dark의 주인공으로 복원했습니다. 과거 화면을 그대로 되감은 것이 아니라 두
사진의 수평선·빛·밀도에서 현재 콘텐츠에 맞는 형태 규칙을 다시 도출했습니다.

| Deep Glacier · light | Stellar Field · dark |
|---|---|
| ![Deep Glacier](https://raw.githubusercontent.com/sungmin-park-dev/sungmin-park-dev.github.io/main/docs/design-proposals/deep-glacier-stellar-blue-revival/final-personal-light-1440.png) | ![Stellar Field](https://raw.githubusercontent.com/sungmin-park-dev/sungmin-park-dev.github.io/main/docs/design-proposals/deep-glacier-stellar-blue-revival/final-personal-dark-1440.png) |

### 확정된 디자인 문법

- **Field**: 사진이 장식이 아니라 환경 자체가 됩니다.
- **Plane**: 내비게이션·프로젝트 인덱스·장문 본문처럼 대비 보호가 필요한 곳에만
  optical surface를 둡니다.
- **Trace**: 1–2px 수평선으로 현재 위치, 선택, 분리를 표시합니다.
- **Point**: 테마 제어, 상태, focus처럼 하나의 의미를 가진 신호에만 원형을 씁니다.

상단바 `Horizon Rail`은 전체 탐색을 담으므로 낮고 긴 Plane이며, 활성 항목은
Trace로 표시합니다. Hero에서는 사진이 보이도록 더 투명하고, 콘텐츠 영역에서는
같은 기하를 유지한 채 읽기 대비만 높입니다. 원형은 Rail 전체가 아니라 독립
환경 제어인 테마 버튼에만 사용합니다.

### 저장소별 적용

- 개인 포트폴리오: Deep Glacier / Stellar Field를 기본 light/dark 정체성으로 적용
- `emergence-theme`: neutral 시각 기본값을 유지하고
  `presets/glacier-stellar/`에 이미지·92개 환경 토큰·Sass·layout·homepage·
  Notes/Readings index·installer를 포함한 full preset으로 제공
- 런타임 제어: 기존 light/dark 토글만 유지하며 세 번째 스타일 토글은 추가하지 않음
- 개인 사이트의 비활성 Notes/Readings와 과거 Bento 메뉴는 복원하지 않음

### 검증

- 개인 사이트, neutral theme, 설치된 preset의 Jekyll build 및 HTML Proofer 통과
- dark/light YAML ↔ portable JSON: 환경별 92/92 키·값 일치
- 1440×900, 768, 600, 480, 390×844에서 홈·Notes·Readings·About·Post 확인
- 모든 확인 폭에서 가로 overflow 0
- 모바일 메뉴의 `aria-expanded`/label과 Escape 닫기 확인
- Hero → Content 스크롤에서 Rail의 투명도·대비·활성 Trace 전환 확인
- 장식적 page-load fade 제거 및 CSS asset cache busting 적용

### 이미지 권리

- Deep Glacier: Sung-Min Park가 2025-02-08 아이슬란드에서 직접 촬영,
  [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
- Stellar Field: Jeremy Thomas의
  [Colorful galaxy](https://unsplash.com/photos/blue-and-purple-galaxy-digital-wallpaper-E0AHdsENmDg),
  pre-2017 Unsplash 공개본의
  [CC0 기록](https://commons.wikimedia.org/wiki/File:Colorful_galaxy_(Unsplash).jpg)

코드의 MIT 라이선스와 미디어 권리는 `ASSET-LICENSES.md`에서 분리했고, 현재
환경에 맞는 사진 credit을 footer에 유지했습니다. 상세 결정과 형태 계약은
[`DESIGN.md`](https://github.com/sungmin-park-dev/sungmin-park-dev.github.io/blob/main/DESIGN.md),
구현·검증 기록은
[`proposal.md`](https://github.com/sungmin-park-dev/sungmin-park-dev.github.io/blob/main/docs/design-proposals/deep-glacier-stellar-blue-revival/proposal.md)에 정리했습니다.
