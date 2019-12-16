---
layout: page
title: Projetos
ref: projects
permalink: projetos/
---
<section class="list">
    {% assign posts=site.posts %}
    {% for post in posts %}
        {% if post.projects %}
            <div class="item {% if post.star %}star{% endif %}">
                <a class="url" href="{% if post.externalLink %}{{ post.externalLink }}{% else %}{{ site.url }}{{ post.url }}{% endif %}">
                    <aside><time datetime="{{ post.date | date:"%d-%m-%Y" }}">{{ post.date | date: "%b %d %Y" }}</time></aside>
                    <h3 class="title">{{ post.title }}</h3>
                </a>
            </div>
        {% endif %}
    {% endfor %}
</section>