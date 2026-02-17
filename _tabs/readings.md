---
title: Readings
layout: custom-page
icon: fas fa-book-open
order: 3
permalink: /readings/
slug: readings
---

<div class="archive-container">
  {% assign readings_by_year = site.readings | group_by_exp: "item", "item.date | date: '%Y'" %}

  {% if readings_by_year.size > 0 %}
    {% for year_group in readings_by_year %}
      <div class="year-section">
        <h2 class="year-header">{{ year_group.name }}</h2>
        <div class="post-list">
          {% for item in year_group.items %}
            <a href="{{ item.url }}" class="post-item">
              <div class="post-date">{{ item.date | date: "%B %d, %Y" }}</div>
              <h3 class="post-title">{{ item.title }}</h3>
              {% if item.excerpt %}
                <p class="post-excerpt">{{ item.excerpt | strip_html | truncatewords: 30 }}</p>
              {% endif %}
              {% if item.categories.size > 0 %}
                <div class="post-categories">
                  {% for category in item.categories %}
                    <span class="post-category">{{ category }}</span>
                  {% endfor %}
                </div>
              {% endif %}
            </a>
          {% endfor %}
        </div>
      </div>
    {% endfor %}
  {% else %}
    <div class="empty-state">
      <p>No readings yet. Stay tuned for upcoming content.</p>
    </div>
  {% endif %}
</div>
