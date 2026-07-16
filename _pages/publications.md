---
layout: single
title: "Publications"
permalink: /publications/
author_profile: false
classes: wide
description: "Peer-reviewed papers and preprints from the RoboMix² project."
---

<div class="publications-list">
{% assign pubs = site.data.publications.publications | sort: "date" | reverse %}
{% for pub in pubs %}
{% assign mod = forloop.index | modulo: 2 %}
<div class="pub-card {% if mod == 0 %}pub-card--reverse{% endif %}">

  <div class="pub-media {% if pub.video %}pub-media--video{% endif %}">
    {% if pub.image %}
      <img src="{{ pub.image }}" alt="{{ pub.title }}">
    {% elsif pub.video %}
      <iframe src="{{ pub.video }}" frameborder="0" allowfullscreen></iframe>
    {% else %}
      <div class="pub-no-media"></div>
    {% endif %}
  </div>

  <div class="pub-info">
    <div class="pub-title">{{ pub.title }}</div>
    {% if pub.awards %}
    <div class="pub-awards">{% for award in pub.awards %}<span class="pub-award">🏆 {{ award }}</span>{% endfor %}</div>
    {% endif %}
    <div class="pub-authors">{{ pub.authors }}</div>
    {% if pub.equal_contributions != "" %}
    <div class="pub-equal">{{ pub.equal_contributions }}</div>
    {% endif %}
    <div class="pub-venue">{{ pub.venue }} · {{ pub.year }}</div>

    <div class="pub-links">
      {% if pub.arxiv %}
        <a href="{{ pub.arxiv }}" target="_blank">arXiv</a>
      {% endif %}
      {% if pub.proceedings %}
        <a href="{{ pub.proceedings }}" target="_blank">Proceedings</a>
      {% endif %}
      {% if pub.github %}
        <a href="{{ pub.github }}" target="_blank">Code</a>
      {% endif %}
      {% if pub.pdf %}
        <a href="{{ pub.pdf }}" target="_blank">PDF</a>
      {% endif %}
      {% if pub.website %}
        <a href="{{ pub.website }}" target="_blank">Project Page</a>
      {% endif %}
      {% if pub.poster %}
        <a href="{{ pub.poster }}" target="_blank">Poster</a>
      {% endif %}
      {% if pub.slides %}
        <a href="{{ pub.slides }}" target="_blank">Slides</a>
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
