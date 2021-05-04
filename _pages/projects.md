---
layout: page
title: projects
permalink: /projects/
description: A growing collection of my projects.
order: 3
nav: true
---

<div class="projects grid">

  {% assign sorted_projects = site.projects | sort: "importance" %}
  {% for project in sorted_projects %}
  <div class="grid-item">
    {% if project.redirect %}
    <a href="{{ project.redirect }}" target="_blank">
    {% else %}
    <a href="{{ project.url | relative_url }}">
    {% endif %}
      <div class="card hoverable">
        {% if project.img %}
        <img src="{{ project.img | relative_url }}" alt="project thumbnail">
        {% endif %}
        <div class="card-body">
          <h2 class="card-title ">{{ project.title }}</h2>
          <div class="row ml-1 mr-1 p-0">
            <div class="github-icon">
              <div class="icon" data-toggle="tooltip" title="Code Repository">
                {% if project.paper %}
                <object><a href="{{ project.paper }}" target="_blank"><i class="fas fa-scroll"></i></a></object>
                {% endif %}
                {% if project.slides %}
                <object><a href="{{ project.slides }}" target="_blank"><i class="fas fa-chalkboard"></i></a></object>
                {% endif %}
                {% if project.prototype %}
                <object><a href="{{ project.prototype }}" target="_blank"><i class="fas fa-link"></i></a></object>
                {% endif %}
                {% if project.github %}
                <object><a href="{{ project.github }}" target="_blank"><i class="fab fa-github gh-icon"></i></a></object>
                {% endif %}
              </div>
            </div>
          </div>
          <p class="card-text">{{ project.description }}</p>
          <div class="row ml-1 mr-1 p-0 mb-0  ">
          {% for hashtag in project.hashtags %}
            <p class="card-hashtag"> #{{hashtag}} </p>
          {% endfor %}
          </div>
        </div>
      </div>
    </a>
  </div>
{% endfor %}

</div>
