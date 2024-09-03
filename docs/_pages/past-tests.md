---
permalink: /past-tests
title: "List of Past Tests by Year"
layout: single
---

{% for year in site.data.pdf_files %}
### {{ year[0] }}

<table>
  <thead>
    <tr>
      <th>Document Name</th>
      <th>Download Link</th>
    </tr>
  </thead>
  <tbody>
    {% for pdf in year[1] %}
    <tr>
      <td>{{ pdf.name }}</td>
      <td><a href="/pdfs/past-tests/{{ year[0] }}/{{ pdf.file }}">Download {{ pdf.name }}</a></td>
    </tr>
    {% endfor %}
  </tbody>
</table>

{% endfor %}
