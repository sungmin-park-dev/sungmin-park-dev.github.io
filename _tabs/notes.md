---
title: Notes
layout: custom-page
icon: fas fa-book
order: 2
permalink: /notes/
slug: notes
---

<div class="notes-container">
  <!-- 카테고리 필터 (향후 확장 가능) -->
  <div class="category-filter">
    <button class="filter-btn active" data-category="all">All</button>
    <button class="filter-btn" data-category="physics">Physics</button>
    <button class="filter-btn" data-category="machine-learning">Machine Learning</button>
    <button class="filter-btn" data-category="quantum">Quantum Computing</button>
  </div>

  <!-- 노트 리스트 -->
  <div class="notes-list">
    {% assign all_notes = site.notes %}

    {% if all_notes.size > 0 %}
      {% for post in all_notes %}
        <a href="{{ post.url }}" class="note-card" data-categories="{{ post.tags | join: ' ' }}">
          <div class="note-header">
            <!-- 카테고리 아이콘 -->
            <div class="note-icon">
              {% if post.tags contains 'physics' %}
                <i class="fas fa-atom"></i>
              {% elsif post.tags contains 'machine-learning' %}
                <i class="fas fa-brain"></i>
              {% elsif post.tags contains 'quantum' %}
                <i class="fas fa-microchip"></i>
              {% else %}
                <i class="fas fa-book-open"></i>
              {% endif %}
            </div>

            <div class="note-info">
              <!-- 제목 -->
              <h3 class="note-title">{{ post.title }}</h3>

              <!-- 날짜 및 메타 정보 -->
              <div class="note-meta">
                <span class="note-date">
                  <i class="far fa-calendar"></i>
                  {{ post.date | date: "%b %d, %Y" }}
                </span>
                {% if post.reading_time %}
                  <span class="note-reading-time">
                    <i class="far fa-clock"></i>
                    {{ post.reading_time }} min read
                  </span>
                {% endif %}
              </div>
            </div>
          </div>

          <!-- 요약 -->
          {% if post.excerpt %}
            <p class="note-summary">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
          {% endif %}

          <!-- 태그 -->
          {% if post.tags.size > 0 %}
            <div class="note-tags">
              {% for tag in post.tags %}
                <span class="note-tag">{{ tag }}</span>
              {% endfor %}
            </div>
          {% endif %}
        </a>
      {% endfor %}
    {% else %}
      <div class="empty-state">
        <div class="empty-icon">
          <i class="fas fa-pen-fancy"></i>
        </div>
        <h3>No notes yet</h3>
        <p>Physics, Machine Learning, and Quantum Computing notes will appear here.</p>
      </div>
    {% endif %}
  </div>
</div>

<script>
// 카테고리 필터 기능 (향후 확장용)
document.addEventListener('DOMContentLoaded', function() {
  const filterBtns = document.querySelectorAll('.filter-btn');
  const noteCards = document.querySelectorAll('.note-card');

  filterBtns.forEach(btn => {
    btn.addEventListener('click', function() {
      const category = this.getAttribute('data-category');

      // 활성 버튼 스타일 변경
      filterBtns.forEach(b => b.classList.remove('active'));
      this.classList.add('active');

      // 카드 필터링
      noteCards.forEach(card => {
        const categories = card.getAttribute('data-categories');

        if (category === 'all' || categories.includes(category)) {
          card.style.display = 'block';
        } else {
          card.style.display = 'none';
        }
      });
    });
  });
});
</script>
