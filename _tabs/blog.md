---
title: Archive
layout: custom-page
icon: fas fa-archive
order: 3
permalink: /archive/
slug: archive
---

<div class="archive-container">
  {% assign posts_by_year = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}

  {% if posts_by_year.size > 0 %}
    {% for year_group in posts_by_year %}
      <div class="year-section">
        <h2 class="year-header">{{ year_group.name }}</h2>
        <div class="post-list">
          {% for post in year_group.items %}
            <a href="{{ post.url }}" class="post-item">
              <div class="post-date">{{ post.date | date: "%B %d, %Y" }}</div>
              <h3 class="post-title">{{ post.title }}</h3>
              {% if post.excerpt %}
                <p class="post-excerpt">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
              {% endif %}
              {% if post.categories.size > 0 %}
                <div class="post-categories">
                  {% for category in post.categories %}
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
      <p>No posts yet. Stay tuned for upcoming content.</p>
    </div>
  {% endif %}
</div>
