# drone-ibom

Drone CI plugin for generating Interactive Bom in Kicad projects
https://github.com/openscopeproject/InteractiveHtmlBom

Example usage:

```yaml
pipeline:
  ibom:
    image: surgecloud/drone-kicad-ibom
    pull: true
    project: name_of_project
    base: CI-BUILD
    folder: ibom
```
