# Analytics

Reflow skins supports two analytics system:
- Matomo (TODO)
- Google Analytics

## Google Analytics
To use this with Reflow Maven skin, use the following configuration
in the [`site.xml` site descriptor][site-xml] file:
  
```xml
<project>
  ...
  <googleAnalyticsAccountId>your id</googleAnalyticsAccountId>
  <custom>
    <reflowSkin>
      ...
      <googleAnalytics>
        <useGtag>true</useGtag>
        <anonymizeIp>true</anonymizeIp>
        <forceSSL>true</forceSSL>
      </googleAnalytics>
      ...
    </reflowSkin>
  </custom>
</project>
```

`<useGtag>true</useGtag>` will force using Global site tag (gtag.js)


[site-xml]: https://maven.apache.org/doxia/doxia-sitetools/doxia-decoration-model/decoration.html