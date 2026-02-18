---
title: Readings
layout: custom-page
icon: fas fa-book-open
order: 3
permalink: /readings/
slug: readings
description: "Paper reviews, tech explorations, and perspectives"
---

<div class="readings-container">
  {% include tag-nebula.html id="readings-tag-cloud" title="tags" %}
  <!-- 카테고리 필터 -->
  <div class="category-filter">
    <button class="filter-btn active" data-category="all">All</button>
    <button class="filter-btn" data-category="papers"><i class="fas fa-file-alt"></i> Papers</button>
    <button class="filter-btn" data-category="tech"><i class="fas fa-wrench"></i> Tech</button>
    <button class="filter-btn" data-category="perspectives"><i class="fas fa-lightbulb"></i> Perspectives</button>
  </div>

  <!-- 카드 그리드 -->
  <div class="readings-grid">
    {% assign all_readings = site.readings %}
    {% if all_readings.size > 0 %}
      {% for item in all_readings %}
        <a href="{{ item.url }}" class="reading-card" data-category="{{ item.subcategory }}">
          <div class="reading-category-label">
            {% if item.subcategory == 'papers' %}
              <i class="fas fa-file-alt"></i> Papers
            {% elsif item.subcategory == 'tech' %}
              <i class="fas fa-wrench"></i> Tech
            {% elsif item.subcategory == 'perspectives' %}
              <i class="fas fa-lightbulb"></i> Perspectives
            {% else %}
              <i class="fas fa-book-open"></i> Reading
            {% endif %}
          </div>
          <h3 class="reading-title">{{ item.title }}</h3>
          <span class="reading-date">{{ item.date | date: "%b %d, %Y" }}</span>
          {% if item.tags.size > 0 %}
            <div class="reading-tags">
              {% for tag in item.tags limit:3 %}
                <span class="reading-tag">{{ tag }}</span>
              {% endfor %}
            </div>
          {% endif %}
        </a>
      {% endfor %}
    {% else %}
      <div class="empty-state">
        <div class="empty-icon">
          <i class="fas fa-book-open"></i>
        </div>
        <h3>No readings yet</h3>
        <p>Paper reviews, tech explorations, and perspectives will appear here.</p>
      </div>
    {% endif %}
  </div>
</div>

<script src="{{ '/assets/js/tag-filter.js' | relative_url }}"></script>
<script>
const tagFilter = new TagFilter('.reading-card', '#readings-tag-cloud');

document.addEventListener('DOMContentLoaded', function() {
  const filterBtns = document.querySelectorAll('.filter-btn');
  const cards = document.querySelectorAll('.reading-card');

  filterBtns.forEach(btn => {
    btn.addEventListener('click', function() {
      const category = this.getAttribute('data-category');
      filterBtns.forEach(b => b.classList.remove('active'));
      this.classList.add('active');

      cards.forEach(card => {
        const cardCategory = card.getAttribute('data-category');
        card.style.display = (category === 'all' || cardCategory === category) ? 'flex' : 'none';
      });
    });
  });
});
</script>
