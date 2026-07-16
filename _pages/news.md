---
layout: single
title: "News"
permalink: /news/
author_profile: false
classes: wide
description: "Latest updates, milestones, and announcements from the RoboMix² SNSF project."
---

<div class="news-list">
{% assign news = site.data.news.news | sort: "date" | reverse %}
{% assign logo_count = 0 %}
{% for item in news %}
{% if item.logo and item.logo != "" %}
  {% assign logo_count = logo_count | plus: 1 %}
  {% assign mod = logo_count | modulo: 2 %}
<div class="news-item news-item--has-logo {% if mod == 0 %}news-item--logo-right{% endif %}">
  <span class="news-date">{{ item.date | date: "%B %d, %Y" }}</span>
  <img class="news-logo" src="{{ item.logo }}" alt="venue logo"{% if item.logo_width and item.logo_width != "" %} style="--logo-width: {{ item.logo_width }}"{% endif %}>
  <span class="news-text">{{ item.text }}</span>
</div>
{% else %}
<div class="news-item">
  <span class="news-date">{{ item.date | date: "%B %d, %Y" }}</span>
  <span class="news-text">{{ item.text }}</span>
</div>
{% endif %}
{% endfor %}
</div>
