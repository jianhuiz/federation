{% if grains['cloud'] is defined and grains['cloud'] == 'aws' %}
/usr/share/google/safe_format_and_mount:
  file.managed:
    - source: salt://helpers/safe_format_and_mount
    - user: root
    - group: root
    - mode: 755
{% endif %}
