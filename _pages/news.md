---
layout: single
title: "News"
permalink: /news/
author_profile: false
classes: wide
---

<div class="news-list">
{% assign news = site.data.news.news | sort: "date" | reverse %}
{% for item in news %}
<div class="news-item">
  <span class="news-date">{{ item.date | date: "%B %d, %Y" }}</span>
  <span class="news-text">{{ item.text }}</span>
</div>
{% endfor %}
</div>