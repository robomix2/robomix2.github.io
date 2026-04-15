---
layout: single
title: "People"
permalink: /people/
---

{% for institution in site.data.people.institutions %}
## {{ institution.name }}

<div class="people-row">
{% for person in institution.members %}
<div class="person-card">
  <img src="{{ person.photo }}" alt="{{ person.name }}" class="person-photo">
  <div class="person-info">
    <strong>{{ person.name }}</strong><br>
    <em>{{ person.role_label }}</em><br>
    {% if person.website != "" %}<a href="{{ person.website }}">Website</a> {% endif %}
  </div>
</div>
{% endfor %}
</div>

---
{% endfor %}