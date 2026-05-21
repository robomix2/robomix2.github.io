---
layout: single
title: "Project Partners"
permalink: /people/
---

{% for institution in site.data.people.institutions %}
<div class="institution-section">

{% if institution.subgroups %}
  {% for subgroup in institution.subgroups %}
  <div class="institution-heading">
    {% if institution.logo and institution.logo != "" %}<img class="institution-logo" src="{{ institution.logo }}" alt="{{ institution.name }} logo"{% if institution.logo_height and institution.logo_height != "" %} style="--logo-height: {{ institution.logo_height }}"{% endif %}>{% endif %}
    <div class="institution-heading-text">
      <span class="institution-title">{{ subgroup.name }}</span>
      <span class="institution-subtitle">{{ institution.name }}</span>
    </div>
  </div>
  <div class="people-row">
  {% for person in subgroup.members %}
  <div class="person-card">
    <img src="{{ person.photo }}" alt="{{ person.name }}" class="person-photo">
    <div class="person-info">
      <strong>{{ person.name }}</strong><br>
      <span class="person-role">{{ person.role_label }}</span><br>
      {% if person.website != "" %}<a href="{{ person.website }}">Website</a>{% endif %}
    </div>
  </div>
  {% endfor %}
  </div>
  {% endfor %}

{% else %}
<div class="institution-heading">
  {% if institution.logo and institution.logo != "" %}<img class="institution-logo" src="{{ institution.logo }}" alt="{{ institution.name }} logo"{% if institution.logo_height and institution.logo_height != "" %} style="--logo-height: {{ institution.logo_height }}"{% endif %}>{% endif %}
  {% if institution.label and institution.label != "" %}
  <div class="institution-heading-text">
    <span class="institution-title">{{ institution.label }}</span>
    <span class="institution-subtitle">{{ institution.name }}</span>
  </div>
  {% else %}
  <span class="institution-title">{{ institution.name }}</span>
  {% endif %}
</div>
<div class="people-row">
{% for person in institution.members %}
<div class="person-card">
  <img src="{{ person.photo }}" alt="{{ person.name }}" class="person-photo">
  <div class="person-info">
    <strong>{{ person.name }}</strong><br>
    <span class="person-role">{{ person.role_label }}</span><br>
    {% if person.website != "" %}<a href="{{ person.website }}">Website</a>{% endif %}
  </div>
</div>
{% endfor %}
</div>
{% endif %}

</div>
---
{% endfor %}
