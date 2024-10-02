---
permalink: /registration
title: "Online Registration"
layout: default
---


<style type="text/css" media="screen">
  .container {
    margin: 10px auto;
    max-width: 600px;
    text-align: center;
  }
  h1 {
    margin: 30px 0;
    font-size: 4em;
    line-height: 1;
    letter-spacing: -1px;
  }

  .submenu-list {
    list-style-type: none;
    padding: 0;
  }

  .submenu-item {
    margin: 10px 0;
  }

  .submenu-item a {
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
  }

  .submenu-item a:hover {
    text-decoration: underline;
  }

</style>

<div class="container">
<p><strong>Registration for 2024.</strong></p>
<ul class="submenu-list">
  {% for item in site.data.navigation.main %}
    {% if item.title == "Online Registration" %}
      {% for child in item.children %}
        <li class="submenu-item"><a href="{{ child.url | relative_url }}">{{ child.title }}</a></li>
      {% endfor %}
    {% endif %}
  {% endfor %}
</ul>


</div>
