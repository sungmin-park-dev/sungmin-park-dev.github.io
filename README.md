# Personal Guide for me

[![Gem Version](https://img.shields.io/gem/v/jekyll-theme-chirpy)][gem]&nbsp; 
[![GitHub license](https://img.shields.io/github/license/cotes2020/chirpy-starter.svg?color=blue)][mit]

Welcome! This is your complete step-by-step guide to building and managing a personal website using Jekyll and the beautiful Chirpy theme. No prior web development experience required!

## 🤔 What is Jekyll and Why Use It?

**Jekyll** is a simple tool that transforms your plain text files into a beautiful website. Think of it as a magic converter:
- You write content in simple **Markdown** (like writing a text document)
- Jekyll converts it into a professional website
- **GitHub Pages** hosts it for free
- **No coding required** for basic usage!

**Why Jekyll + Chirpy theme is perfect for beginners:**
- ✅ **Free hosting** on GitHub Pages
- ✅ **No server maintenance** required
- ✅ **Beautiful, responsive design** out of the box
- ✅ **Blog-ready** with categories and tags
- ✅ **SEO optimized** automatically
- ✅ **Mobile-friendly** design

## 🏗️ Website Structure

# Jekyll 프로젝트 구조 정리표

## 📁 폴더 및 파일 구조

| 폴더/파일          | 역할                 | 주요 내용                                                                                              | 초심자 주의사항                                      |
| ------------------ | -------------------- | ------------------------------------------------------------------------------------------------------ | ---------------------------------------------------- |
| **📁 assets/**      | 웹사이트 리소스      | • CSS (디자인/스타일)<br>• 이미지 파일<br>• JavaScript (동작/기능)<br>• 외부 라이브러리                | 🟢 이미지 추가 시 사용<br>🟡 CSS/JS는 고급 사용자용    |
| **⚙️ _config.yml**  | 사이트 전체 설정     | • 사이트 제목, 부제목<br>• 작성자 정보<br>• GitHub/SNS 링크<br>• 테마 설정<br>• 플러그인 설정          | 🔴 **필수 수정 파일**<br>개인 정보로 변경 필요        |
| **📊 _data/**       | 구조화된 데이터      | • 연락처 정보<br>• 소셜 공유 설정<br>• 다국어 지원 파일<br>• 메뉴 구성 정보                            | 🟡 고급 커스터마이징용<br>초심자는 건드리지 않아도 됨 |
| **📦 Gemfile**      | Ruby 라이브러리 목록 | • Jekyll 버전<br>• 테마 정보<br>• 플러그인 목록                                                        | 🟡 자동 관리됨<br>직접 수정할 일 거의 없음            |
| **📦 Gemfile.lock** | 정확한 버전 고정     | • 설치된 정확한 버전<br>• 의존성 관계                                                                  | 🔴 **절대 수정 금지**<br>자동 생성 파일               |
| **🏠 index.html**   | 홈페이지             | • 첫 화면 레이아웃<br>• 최신 글 목록 표시                                                              | 🟢 기본 설정으로 충분<br>수정 불필요                  |
| **📄 LICENSE**      | 라이선스 정보        | • 저작권 정보<br>• 사용 조건                                                                           | 🟢 MIT 라이선스<br>수정 불필요                        |
| **🔌 _plugins/**    | 확장 기능            | • 커스텀 기능<br>• 자동화 스크립트<br>• 테마 확장                                                      | 🟡 고급 사용자용<br>Ruby 지식 필요                    |
| **✍️ _posts/**      | 블로그 글 모음       | • 마크다운 파일들<br>• 파일명: YYYY-MM-DD-제목.md<br>• Front Matter + 내용                             | 🔴 **주요 작업 공간**<br>여기서 글 작성               |
| **📖 README.md**    | 프로젝트 가이드      | • 설치 방법<br>• 사용법 설명<br>• 초심자 가이드                                                        | 🟢 참고용 문서<br>수정 불필요                         |
| **🗂️ _site/**       | 빌드 결과물          | • 완성된 HTML 파일들<br>• 실제 웹사이트 파일들                                                         | 🔴 **절대 수정 금지**<br>Jekyll이 자동 생성           |
| **📑 _tabs/**       | 메뉴 페이지들        | • about.md (소개 페이지)<br>• categories.md (카테고리)<br>• tags.md (태그)<br>• archives.md (아카이브) | 🔴 **about.md 수정 필수**<br>나머지는 자동 생성       |
| **🛠️ tools/**       | 개발 도구            | • 배포 스크립트<br>• 자동화 도구<br>• 설정 스크립트                                                    | 🟡 고급 사용자용<br>초심자는 사용 안 해도 됨          |

## 🎯 초심자 우선순위

### 🔴 반드시 해야 할 작업
| 파일               | 해야 할 일        | 설명                             |
| ------------------ | ----------------- | -------------------------------- |
| **_config.yml**    | 개인 정보 수정    | 이름, 이메일, GitHub 사용자명 등 |
| **_tabs/about.md** | 자기소개 작성     | 본인에 대한 설명                 |
| **_posts/**        | 첫 블로그 글 작성 | YYYY-MM-DD-제목.md 형식으로      |

### 🟡 나중에 배울 것들
| 폴더/파일       | 용도                | 언제 배우면 좋을까 |
| --------------- | ------------------- | ------------------ |
| **assets/css/** | 디자인 커스터마이징 | CSS 배운 후        |
| **assets/js/**  | 기능 추가           | JavaScript 배운 후 |
| **_data/**      | 고급 설정           | Jekyll 익숙해진 후 |
| **_plugins/**   | 커스텀 기능         | Ruby 배운 후       |

### 🟢 건드리지 않아도 되는 것들
- `Gemfile.lock` - 자동 관리
- `_site/` - 자동 생성
- `tools/` - 고급 사용자용
- `LICENSE` - 기본값으로 충분
- `index.html` - 테마에서 제공

## 💡 작업 흐름

1. **_config.yml** 개인 정보 수정
2. **_tabs/about.md** 자기소개 작성  
3. **_posts/** 폴더에 블로그 글 작성
4. 로컬에서 미리보기: `bundle exec jekyll serve`
5. GitHub에 업로드: `git push`
6. 자동으로 웹사이트 배포 완료! 🎉

### Core Configuration Files
- **`_config.yml`** - Main Jekyll configuration file containing:
  - Site metadata (title, description, author info)
  - Theme settings and customization options
  - Social media links and contact information
  - Analytics and SEO configurations
  - Plugin settings and build options
- **`index.html`** - Homepage layout using the `home` layout from Chirpy theme
- **`Gemfile`** & **`Gemfile.lock`** - Ruby gem dependencies for Jekyll and theme

### Content Organization

#### 📝 Blog Posts (`_posts/`)
- **Current Status**: Contains only a placeholder file (`.placeholder`)
- **Purpose**: Store all blog posts in Markdown format
- **Naming Convention**: `YYYY-MM-DD-title.md` (e.g., `2024-09-05-my-first-post.md`)
- **Features**: Posts support categories, tags, table of contents, and rich markdown content with syntax highlighting

#### 🗂️ Navigation Tabs (`_tabs/`)
The site includes four main navigation tabs organized by order:

1. **`categories.md`** (Order: 1, Icon: fas fa-stream)
   - Displays posts organized by categories
   - Automatically generated category pages

2. **`tags.md`** (Order: 2, Icon: fas fa-tags)
   - Shows all post tags in an interactive tag cloud
   - Click tags to filter posts

3. **`archives.md`** (Order: 3, Icon: fas fa-archive)
   - Chronological archive of all posts
   - Timeline view of publication dates

4. **`about.md`** (Order: 4, Icon: fas fa-info-circle)
   - Personal information and bio section
   - **Status**: Currently contains placeholder text and needs content

#### 📊 Data & Configuration (`_data/`)
- Contains theme-specific data files for localization
- Customization settings for various theme components
- Language files for internationalization support

#### 🔌 Plugins (`_plugins/`)
- Custom Jekyll plugins for enhanced functionality
- Theme-specific extensions and modifications

#### 🎨 Assets & Styling
- **`assets/`** - Static files including:
  - Custom CSS stylesheets
  - JavaScript files for interactive features
  - Images and media files
  - Icon fonts and graphics
- **`.jekyll-cache/`** - Jekyll's build cache for faster development builds
- **`_site/`** - Generated static site output (excluded from version control)

### Development & Deployment Infrastructure

#### Development Environment
- **`.devcontainer/`** - Docker development container configuration
  - Provides consistent development environment
  - Includes all necessary dependencies and tools
- **`.vscode/`** - Visual Studio Code workspace settings
  - Code formatting and linting configurations
  - Debug configurations and extensions

#### Build & Deployment Tools
- **`tools/`** - Build and deployment scripts
  - Automated testing and validation
  - Deployment helpers and utilities

#### Configuration Files
- **`.gitignore`** - Git ignore patterns specific to Jekyll sites
- **`.gitattributes`** - Git attributes for proper line endings and file handling
- **`.gitmodules`** - Git submodule configuration for theme dependencies
- **`.editorconfig`** - Cross-editor code style configuration
- **`.nojekyll`** - Tells GitHub Pages to skip default Jekyll processing

#### GitHub Integration
- **`.github/`** - GitHub Actions workflows for:
  - Automated testing on pull requests
  - Continuous deployment to GitHub Pages
  - Code quality checks and validation
- **`LICENSE`** - MIT license for the project

### Key Features & Capabilities

#### 🎨 Theme Features
- **Responsive Design**: Mobile-first, adaptive layout
- **Dark/Light Mode**: Automatic theme switching based on system preference
- **Typography**: Optimized reading experience with custom fonts
- **Syntax Highlighting**: Code blocks with multiple language support

#### 📱 Progressive Web App (PWA)
- **Installable**: Site can be installed as a mobile/desktop app
- **Offline Support**: Cached content available without internet
- **Fast Loading**: Optimized performance with service workers

#### 🔍 SEO & Analytics
- **Search Engine Optimization**: 
  - Meta tags and structured data
  - Open Graph and Twitter Card support
  - Sitemap and robots.txt generation
- **Analytics Integration**: Ready for:
  - Google Analytics
  - GoatCounter
  - Umami
  - Matomo
  - Cloudflare Analytics
  - Fathom

#### 💬 Interactive Features
- **Comments System**: Support for multiple providers:
  - Disqus
  - Utterances (GitHub Issues)
  - Giscus (GitHub Discussions)
- **Search Functionality**: Client-side search across all content
- **Tag & Category Filtering**: Interactive content discovery

#### 🔗 Social Integration
- **Social Media Links**: Configured for GitHub, Twitter, and other platforms
- **Social Sharing**: Built-in sharing buttons for posts
- **Author Profiles**: Rich author information and contact details

### Current Configuration Status

#### ✅ Configured
- Basic site structure and navigation
- Theme installation and setup
- Development environment
- Build and deployment pipeline

#### ⚠️ Needs Configuration
- **Social Media Links**: Currently has placeholder URLs in `_config.yml`
- **About Page Content**: Empty content in `_tabs/about.md`
- **Profile Avatar**: No profile image configured
- **Analytics**: Google Analytics and other services not set up
- **Blog Content**: No posts created yet

## 🚀 Step-by-Step Setup Guide

### Step 1: Essential Software Installation

Before building your website, you need to install these tools on your computer:

#### Install Ruby (Required)
**What is Ruby?** A programming language that Jekyll is built with.

**macOS:**
```bash
# Check if you already have Ruby (you might!)
ruby --version

# If version is less than 2.7, install using Homebrew
brew install ruby
```

**Windows:**
- Download and install from [RubyInstaller.org](https://rubyinstaller.org/)
- Choose "Ruby+Devkit" version

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install ruby-full build-essential zlib1g-dev
```

#### Install Bundler & Jekyll
```bash
# Install Bundler (manages Ruby packages)
gem install bundler

# Install Jekyll
gem install jekyll
```

#### Install Git (if not already installed)
**What is Git?** A tool to track changes and sync with GitHub.
- **macOS:** Install Xcode Command Line Tools: `xcode-select --install`
- **Windows:** Download from [git-scm.com](https://git-scm.com/)
- **Linux:** `sudo apt install git`

### Step 2: Get Your Website Files
```bash
# Navigate to where you want your website folder
cd Desktop

# If you already have the folder (like you do), navigate to it
cd sungmin-park-dev.github.io

# Install all required packages for your website
bundle install
```

### Step 3: Start Your Website Locally
```bash
# Start the website on your computer (includes live preview)
bundle exec jekyll serve --livereload

# Your website will be available at: http://localhost:4000
# Any changes you make will automatically refresh the page!
```

**🎉 Congratulations!** Your website is now running locally. Open your web browser and go to `http://localhost:4000` to see it!

## ✏️ Creating Content: A Beginner's Guide

### Your First Essential Tasks

#### Task 1: Customize Your Site Information
**File to edit:** `_config.yml` (This is your website's main settings file)

**What to change:**
```yaml
title: Your Website Name
tagline: A short description of your site
description: A longer description for search engines
url: "https://yourusername.github.io"
github:
  username: yourusername
twitter:
  username: yourtwitterhandle
social:
  name: Your Full Name
  email: your.email@example.com
```

#### Task 2: Write Your About Page
**File to edit:** `_tabs/about.md`

Replace the placeholder content with information about yourself:
```markdown
---
# the default layout is 'page'
icon: fas fa-info-circle
order: 4
---

# About Me

Write about yourself here! This could include:
- Who you are
- What you do
- Your interests and hobbies  
- Your professional background
- Contact information
```

#### Task 3: Create Your First Blog Post

**Step-by-step:**

1. **Create a new file** in the `_posts/` folder
2. **Name it correctly:** `YYYY-MM-DD-title.md` (e.g., `2024-09-05-my-first-post.md`)
3. **Add the front matter** (the header information):

```markdown
---
title: My First Blog Post
date: 2024-09-05 12:00:00 +0000
categories: [Blogging, Personal]
tags: [first-post, introduction]
---

# Welcome to My Blog!

This is my first blog post. Here I can write about anything I want using **Markdown** format.

## What I Can Include

- Text formatting (*italic*, **bold**)
- Lists (like this one!)
- [Links](https://example.com)
- Images
- Code blocks
- And much more!

```python
def hello_world():
    print("Hello, World!")
```

Stay tuned for more posts!
```

### Understanding Markdown Basics

**Markdown** is like writing in a text editor, but with simple symbols to make things look nice:

- `# Heading 1` creates a large heading
- `## Heading 2` creates a smaller heading  
- `**bold text**` makes text **bold**
- `*italic text*` makes text *italic*
- `[link text](https://example.com)` creates a link
- `![alt text](image.jpg)` adds an image
- Lists start with `-` or numbers `1.`

### Preview Your Changes

Every time you save a file while `bundle exec jekyll serve --livereload` is running, your website automatically updates at `http://localhost:4000`. You can see your changes instantly!

## 🚀 Publishing Your Website

### Understanding the File Structure

Your website has several important folders:

```
your-website/
├── _config.yml          # Main settings file  
├── _posts/              # Your blog posts go here
├── _tabs/               # Navigation pages (About, Categories, etc.)
├── assets/              # Images, CSS, other files
├── _site/               # Generated website (don't touch this!)
└── index.html           # Your homepage
```

### Publishing to GitHub Pages (Free Hosting!)

**The magic:** When you save changes and upload them to GitHub, your website automatically updates online!

```bash
# After making changes, save and upload:

# 1. Save all your changes
git add .

# 2. Create a "commit" (snapshot) with a message
git commit -m "Updated my about page and added first blog post"

# 3. Upload to GitHub (this triggers automatic website update)
git push origin main
```

**Your website will be live at:** `https://yourusername.github.io` (usually within 1-2 minutes)

### Daily Workflow Summary

1. **Start local server:** `bundle exec jekyll serve --livereload`
2. **Make changes** to your files
3. **Preview changes** at `http://localhost:4000`
4. **When happy with changes:**
   - Save files
   - Run: `git add .`
   - Run: `git commit -m "Describe what you changed"`
   - Run: `git push origin main`
5. **Your live website updates automatically!**

## 🆘 Common Beginner Issues & Solutions

### "Command not found: bundle"
**Solution:** Install bundler: `gem install bundler`

### "Could not locate Gemfile"
**Solution:** Make sure you're in the correct folder: `cd Desktop/sungmin-park-dev.github.io`

### Website looks broken locally
**Solution:** 
1. Stop the server (Ctrl+C)
2. Run: `bundle update`
3. Run: `bundle exec jekyll serve --livereload` again

### Changes not showing on live website
**Solution:** 
1. Check if your `git push` was successful
2. Wait 2-5 minutes for GitHub Pages to update
3. Hard refresh your browser (Ctrl+F5 or Cmd+Shift+R)

## 📚 Learning Resources

### Essential Reading
- **Markdown Guide**: [markdownguide.org](https://www.markdownguide.org/basic-syntax/) - Learn formatting
- **Jekyll Documentation**: [jekyllrb.com](https://jekyllrb.com/docs/) - Advanced features
- **Chirpy Theme Wiki**: [Chirpy GitHub Wiki](https://github.com/cotes2020/jekyll-theme-chirpy/wiki) - Theme-specific features

### YouTube Tutorials
Search for: "Jekyll tutorial for beginners" or "GitHub Pages tutorial"

### Practice Markdown
Try online Markdown editors like [dillinger.io](https://dillinger.io/) to practice formatting

## 🎯 Quick Start Checklist

**Before you begin:** Make sure you have Ruby, Bundler, and Git installed (see Step 1 above)

### First Time Setup (Do Once)
- [ ] Navigate to your website folder: `cd Desktop/sungmin-park-dev.github.io`
- [ ] Install dependencies: `bundle install`
- [ ] Start local server: `bundle exec jekyll serve --livereload`
- [ ] Open `http://localhost:4000` in your browser

### Essential Customization (Do Once)
- [ ] Edit `_config.yml` with your personal information
- [ ] Update `_tabs/about.md` with your bio
- [ ] Create your first blog post in `_posts/2024-MM-DD-title.md`

### Regular Workflow (Every time you want to add content)
- [ ] Start server: `bundle exec jekyll serve --livereload`
- [ ] Create/edit content
- [ ] Preview at `http://localhost:4000`
- [ ] Save changes: `git add .`
- [ ] Commit: `git commit -m "Your message"`
- [ ] Publish: `git push origin main`

**🎉 That's it! Your website will be live at `https://yourusername.github.io`**

---

## 📄 License

This work is published under [MIT][mit] License.

[gem]: https://rubygems.org/gems/jekyll-theme-chirpy
[chirpy]: https://github.com/cotes2020/jekyll-theme-chirpy/
[CD]: https://en.wikipedia.org/wiki/Continuous_deployment
[mit]: https://github.com/cotes2020/chirpy-starter/blob/master/LICENSE
