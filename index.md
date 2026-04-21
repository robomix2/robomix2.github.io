---
layout: single
title: "RoboMix2: Mixed Event-frame-based On-device Learning on Mixed Spiking-artificial Neural Networks for Robotics"
---

Write Introduction

## Latest News

<div class="news-list">
{% assign news = site.data.news.news | sort: "date" | reverse | limit: 10 %}
{% for item in news %}
<div class="news-item">
  <span class="news-date">{{ item.date | date: "%B %d, %Y" }}</span>
  <span class="news-text">{{ item.text }}</span>
</div>
{% endfor %}
</div>

<a href="/news/" class="btn btn--primary">All news</a>

---

*This project is funded by the [Swiss National Science Foundation (SNSF)](https://www.snf.ch) under the Project Funding scheme, grant number 10004854.*
