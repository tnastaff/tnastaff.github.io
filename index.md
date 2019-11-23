---
layout: post
---

<!--
{% for cat in site.tags %}
  <h1>{{ cat[0] }}</h1>
{% for p in cat[1] %}
  <p><a href="{{p.url}}"> {{p.title}} </a></p>
{% endfor %}
{% endfor %}
-->

{% for p in site.pages %}
<p><a href="{{p.url}}">{{p.title}}</a></p>
{% endfor %}
