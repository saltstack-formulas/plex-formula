{% from "plex/map.jinja" import plex with context %}

plex-server:
  pkg.installed:
    - sources:
      - plexmediaserver: {{ plex.url }}

  service.running:
    - name: plexmediaserver
    - enable: True
    - require:
      - pkg: plex-server
