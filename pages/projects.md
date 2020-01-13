---
layout: page
title: Projects
ref: projects
permalink: projects/
---

<section class="list">
    {% assign posts=site.posts | where:"category", "project" %}
    {% if posts.size == 0 %}
        <p class="text-center">No posts yet!</p>
    {% elsif site.paginate %}
        {% assign posts=paginator.posts %}
        {% for post in posts %}
            {% if post.category == 'project' %}
                {% if post.hidden != true %}
                    {% include post.html %}
                {% endif %}
            {% endif %}
        {% endfor %}

        {% include pagination.html%}
    {% else %}
        {% assign posts=site.posts %}
        {% for post in posts %}
            {% if post.category == 'project' %}
                {% if post.hidden != true %}
                    {% include post.html %}
                {% endif %}
            {% endif %}
        {% endfor %}
    {% endif %}
</section>
