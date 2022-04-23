# Bootswatch Spacelab theme

This page is using a free [Spacelab theme][bootswatch-theme], courtesy of
[Bootswatch][bootswatch].

To use this theme with Reflow Maven skin, use the following `<theme>` configuration
in the [`site.xml` site descriptor][site-xml] file:
  
```xml
<custom>
  <reflowSkin>
    ...
    <theme>bootswatch-spacelab</theme>
    ...
  </reflowSkin>
</custom>
```

Find other theme options for Reflow Maven skin [here][reflow-themes].

[bootswatch-theme]: https://bootswatch.com/spacelab/
[bootswatch]: https://bootswatch.com
[site-xml]: https://maven.apache.org/doxia/doxia-sitetools/doxia-decoration-model/decoration.html
[reflow-themes]: ../config.html#Themes
