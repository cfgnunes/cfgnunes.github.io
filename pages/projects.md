---
layout: page
title: Projects
permalink: projects/
pagination:
  enabled: true
---

<section class="list">
    {% assign posts=site.posts | where:"category", "project" %}
    {% if posts.size == 0 %}
        <p class="text-center">No posts yet!</p>
    {% else %}
        {% if site.pagination.enabled %}
            {% assign posts=paginator.posts | where:"category", "project" %}
            {% for post in posts %}
                {% if post.hidden != true %}
                    {% include post.html %}
                {% endif %}
            {% endfor %}
            {% include pagination.html%}
        {% else %}
            {% for post in posts %}
                {% if post.hidden != true %}
                    {% include post.html %}
                {% endif %}
            {% endfor %}
        {% endif %}
    {% endif %}
</section>
