---
title: Projects
layout: custom-page
icon: fas fa-code
order: 1
permalink: /projects/
slug: projects
description: "Research implementations and development projects"
---

{% include tag-nebula.html id="projects-tag-cloud" title="tags" %}

<div class="projects-controls">
  <div class="projects-sort">
    <label for="sort-select">Sort by:</label>
    <select id="sort-select" class="sort-select">
      <option value="order">Default</option>
      <option value="title">Title (A-Z)</option>
      <option value="date-desc">Newest First</option>
      <option value="date-asc">Oldest First</option>
      <option value="status">Status</option>
    </select>
  </div>
</div>

<div class="projects-grid">
  {% assign sorted_projects = site.projects | sort: "order" %}
  {% for project in sorted_projects %}
    {% unless project.published == false %}
    {% assign project_link = project.url %}
    {% if project.link and project.link != '#' %}
      {% assign project_link = project.link %}
    {% endif %}
    <div class="project-card{% if project.status == 'in-progress' or project.status == 'planned' %} locked{% endif %}"
         data-status="{{ project.status | default: 'completed' }}"
         data-title="{{ project.title }}"
         data-date="{{ project.date | default: '2024-01-01' }}"
         data-order="{{ project.order | default: 999 }}">
      {% if project.status == 'completed' %}
        <a href="{{ project_link }}" class="project-thumbnail-link">
          <div class="project-thumbnail">
            <i class="{{ project.icon }}"></i>
          </div>
        </a>
      {% else %}
        <div class="project-thumbnail-link">
          <div class="project-thumbnail">
            <i class="{{ project.icon }}"></i>
          </div>
        </div>
      {% endif %}
      {% if project.status %}
        <span class="project-status status-{{ project.status }}">
          <i class="fas fa-circle status-icon"></i>{{ project.status }}
        </span>
      {% endif %}
      <h3 class="project-title">{{ project.title }}</h3>
      <p class="project-description">{{ project.description }}</p>
      <div class="project-tags">
        {% for tag in project.tags %}
          <span class="project-tag">{{ tag }}</span>
        {% endfor %}
      </div>
      {% if project.status == 'completed' %}
        <a href="{{ project_link }}" class="project-button">View Project</a>
      {% elsif project.status == 'in-progress' %}
        <span class="project-button locked-btn">In Progress</span>
      {% else %}
        <span class="project-button locked-btn">Coming Soon</span>
      {% endif %}
    </div>
    {% endunless %}
  {% endfor %}
</div>

<div class="projects-empty" style="display: none;">
  <i class="fas fa-folder-open"></i>
  <p>No projects found</p>
</div>

<script src="{{ '/assets/js/tag-filter.js' | relative_url }}"></script>
<script>
// Initialize tag filter
const tagFilter = new TagFilter('.project-card', '#projects-tag-cloud');

// Project elements
const projectsGrid = document.querySelector('.projects-grid');
const projectsEmpty = document.querySelector('.projects-empty');
const sortSelect = document.getElementById('sort-select');

// Check and show/hide empty state
function updateEmptyState() {
  const visibleCards = Array.from(document.querySelectorAll('.project-card'))
    .filter(card => card.style.display !== 'none');

  if (visibleCards.length === 0) {
    projectsGrid.style.display = 'none';
    projectsEmpty.style.display = 'flex';
  } else {
    projectsGrid.style.display = 'grid';
    projectsEmpty.style.display = 'none';
  }
}

// Override tag filter to update empty state
const originalFilterByTag = tagFilter.filterByTag.bind(tagFilter);
tagFilter.filterByTag = function(selectedTag) {
  originalFilterByTag(selectedTag);
  updateEmptyState();
};

// Sort functionality
sortSelect.addEventListener('change', () => {
  const sortBy = sortSelect.value;
  const cards = Array.from(document.querySelectorAll('.project-card'));

  cards.sort((a, b) => {
    switch(sortBy) {
      case 'title':
        return a.dataset.title.localeCompare(b.dataset.title);
      case 'date-desc':
        return new Date(b.dataset.date) - new Date(a.dataset.date);
      case 'date-asc':
        return new Date(a.dataset.date) - new Date(b.dataset.date);
      case 'status':
        const statusOrder = { 'completed': 1, 'in-progress': 2, 'planned': 3 };
        return (statusOrder[a.dataset.status] || 4) - (statusOrder[b.dataset.status] || 4);
      case 'order':
      default:
        return parseInt(a.dataset.order) - parseInt(b.dataset.order);
    }
  });

  cards.forEach(card => projectsGrid.appendChild(card));
});
</script>
