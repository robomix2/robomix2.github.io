---
layout: single
title: "Publications"
permalink: /publications/
author_profile: false
classes: wide
---

<div class="publications-list">
{% assign pubs = site.data.publications.publications | sort: "date" | reverse %}
{% for pub in pubs %}
{% assign mod = forloop.index | modulo: 2 %}
<div class="pub-card {% if mod == 0 %}pub-card--reverse{% endif %}">

  <div class="pub-media {% if pub.video != '' %}pub-media--video{% endif %}">
    {% if pub.image != "" %}
      <img src="{{ pub.image }}" alt="{{ pub.title }}">
    {% elsif pub.video != "" %}
      <iframe src="{{ pub.video }}" frameborder="0" allowfullscreen></iframe>
    {% else %}
      <div class="pub-no-media"></div>
    {% endif %}
  </div>

  <div class="pub-info">
    <div class="pub-title">{{ pub.title }}</div>
    <div class="pub-authors">{{ pub.authors }}</div>
    {% if pub.equal_contributions != "" %}
    <div class="pub-equal">{{ pub.equal_contributions }}</div>
    {% endif %}
    <div class="pub-venue">{{ pub.venue }} · {{ pub.year }}</div>

    <div class="pub-links">
      {% if pub.arxiv != "" %}
        <a href="{{ pub.arxiv }}" target="_blank">arXiv</a>
      {% endif %}
      {% if pub.proceedings != "" %}
        <a href="{{ pub.proceedings }}" target="_blank">Proceedings</a>
      {% endif %}
    </div>

    {% if pub.abstract != "" %}
    <details class="pub-abstract">
      <summary>Abstract</summary>
      <p>{{ pub.abstract }}</p>
    </details>
    {% endif %}
  </div>

</div>
{% endfor %}
</div>
