---
title: Projects
layout: custom-page
icon: fas fa-code
order: 1
permalink: /projects/
slug: projects
---

<div class="projects-grid">
  {% assign sorted_projects = site.projects | sort: "order" %}
  {% for project in sorted_projects %}
    {% unless project.published == false %}
    <div class="project-card">
      <div class="project-thumbnail">
        <i class="{{ project.icon }}"></i>
      </div>
      {% if project.status %}
        <span class="project-status project-status-{{ project.status }}">{{ project.status }}</span>
      {% endif %}
      <h3 class="project-title">{{ project.title }}</h3>
      <p class="project-description">{{ project.description }}</p>
      <div class="project-tags">
        {% for tag in project.tags %}
          <span class="project-tag">{{ tag }}</span>
        {% endfor %}
      </div>
      <a href="{% if project.link and project.link != '#' %}{{ project.link }}{% else %}{{ project.url }}{% endif %}" class="project-button">
        {% if project.status == 'planned' %}Coming Soon{% else %}View Project{% endif %}
      </a>
    </div>
    {% endunless %}
  {% endfor %}
</div>
