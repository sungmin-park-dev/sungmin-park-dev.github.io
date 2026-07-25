---
title: About
layout: custom-page
icon: fas fa-info-circle
order: 4
permalink: /about/
slug: about
description: "Background, research interests, and contact"
---

{% assign p = site.data.profile %}

<div class="about-content">
  <!-- Profile -->
  <div class="about-profile">
    <img src="{{ p.avatar }}" alt="{{ p.name }}" class="about-photo">
    <div class="about-identity">
      <h2>{{ p.name }}</h2>
      <p class="about-identity__ko">{{ p.name_ko }}</p>
      <p class="about-identity__affiliation">
        {{ p.program }}<br>
        {{ p.institution }}
      </p>
      {% if p.status %}
      <p class="about-identity__status">{{ p.status }}</p>
      {% endif %}
    </div>
  </div>

  <!-- Research Interests -->
  <div class="about-section">
    <h3 class="section-title">research interests</h3>
    <div class="section-content">
      <p>My research interests lie at the fascinating intersection of <strong>physics</strong> and <strong>machine learning</strong>, where I explore how computational methods can unlock new insights into complex quantum systems.</p>

      <p><strong>Physics</strong></p>
      <ul>
        {% for item in p.research.physics %}
        <li>{{ item }}</li>
        {% endfor %}
      </ul>

      <p><strong>Machine Learning</strong></p>
      <ul>
        {% for item in p.research.ml %}
        <li>{{ item }}</li>
        {% endfor %}
      </ul>
    </div>
  </div>

  <!-- Publications -->
  <div class="about-section">
    <h3 class="section-title">publications</h3>
    <div class="section-content">
      <ul class="publication-list">
        {% for pub in p.publications %}
        <li class="publication-entry">
          <span class="publication-entry__title">
            {% if pub.url != "" %}<a href="{{ pub.url }}" target="_blank" rel="noopener">{{ pub.title }}</a>{% else %}{{ pub.title }}{% endif %}
          </span>
          <span class="publication-entry__meta">{{ pub.authors }} — {{ pub.venue }} ({{ pub.year }})</span>
        </li>
        {% endfor %}
      </ul>
    </div>
  </div>

  <!-- Personal Interests -->
  <div class="about-section">
    <h3 class="section-title">personal interests</h3>
    <div class="section-content">
      <p>Beyond research, I enjoy <strong>coding</strong> and <strong>traveling</strong>. There's something particularly satisfying about implementing complex physical phenomena in code and creating visualizations that make abstract concepts tangible.</p>

      <p>I find great joy in:</p>
      <ul>
        <li>Building computational tools for physics research</li>
        <li>Exploring new places and cultures</li>
        <li>Learning about emerging technologies at the intersection of science and engineering</li>
      </ul>
    </div>
  </div>

  <!-- Philosophy -->
  <div class="about-section">
    <h3 class="section-title">philosophy</h3>
    <div class="section-content">
      <p>I believe that the most exciting discoveries happen at the boundaries between disciplines. By combining the rigor of physics with the power of modern computational tools, we can tackle problems that were previously intractable and gain new perspectives on fundamental questions about nature.</p>
    </div>
  </div>

  <!-- Contact / CV -->
  <div class="about-section">
    <h3 class="section-title">contact</h3>
    <div class="section-content">
      <p>Feel free to reach out if you have questions, collaboration ideas, or just want to chat about physics, machine learning, or anything in between!</p>

      <ul class="about-links">
        {% if p.social.github %}
        <li><a href="{{ p.social.github }}" target="_blank" rel="noopener"><i class="fab fa-github" aria-hidden="true"></i> GitHub</a></li>
        {% endif %}
        {% if p.social.linkedin %}
        <li><a href="{{ p.social.linkedin }}" target="_blank" rel="noopener"><i class="fab fa-linkedin" aria-hidden="true"></i> LinkedIn</a></li>
        {% endif %}
        {% if p.email %}
        <li><a href="mailto:{{ p.email }}"><i class="fas fa-envelope" aria-hidden="true"></i> Email</a></li>
        {% endif %}
        {% if p.social.instagram %}
        <li><a href="{{ p.social.instagram }}" target="_blank" rel="noopener"><i class="fab fa-instagram" aria-hidden="true"></i> Instagram</a></li>
        {% endif %}
      </ul>

      {% if p.cv_url != "" %}
      <a href="{{ p.cv_url }}" class="about-cv-link" target="_blank">
        <i class="fas fa-download" aria-hidden="true"></i> Download CV (PDF)
      </a>
      {% endif %}
    </div>
  </div>
</div>
