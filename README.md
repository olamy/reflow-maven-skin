# [Reflow Maven skin]( https://olamy.github.io/reflow-maven-skin/ )

Reflow is an Apache Maven site skin built on [Bootstrap][bootstrap]. It allows various structural
and stylistic customizations to create a modern-looking Maven-generated website.

To get started and see how the skin looks by default, check out
https://olamy.github.io/reflow-maven-skin!

[bootstrap]: https://getbootstrap.com

## Usage

To use this Maven skin, include it in your `site.xml` file:

```xml
<project>
  ...
  <skin>
    <groupId>io.github.olamy.maven.skins</groupId>
    <artifactId>reflow-maven-skin</artifactId>
    <version>2.0.0</version>
  </skin>
  ...
</project>
```

The skin requires accompanying Reflow Velocity tools (`reflow-velocity-tools`) to be available when
generating Maven site. Add them as a dependency to `maven-site-plugin` in your POM file:

```xml
<build>
  <plugins>
    ...
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-site-plugin</artifactId>
      <version>3.12.0</version>
      <dependencies>
        ...
        <dependency>
          <groupId>io.github.olamy.maven.skins</groupId>
          <artifactId>reflow-velocity-tools</artifactId>
          <version>2.0.0</version>
        </dependency>
        ...
      </dependencies>
      ...
    </plugin>
    ...
  </plugins>
</build>
```

### Configuration

The skin is configurable using the `<custom><reflowSkin>` element in your `site.xml` file.
Refer to [documentation][reflow-config] for all configuration options.

[reflow-config]: https://olamy.github.io/reflow-maven-skin/skin/config.html

A sample configuration file is given below:

```xml
<project>
  ...
  <custom>
    <reflowSkin>
      <theme>bootswatch-spacelab</theme>
      <brand>
        <name>My Project</name>
        <href>https://olamy.github.io/reflow-maven-skin/</href>
      </brand>
      <slogan>Super interesting project doing good things.</slogan>
      <titleTemplate>%2$s | %1$s</titleTemplate>
      <toc>top</toc>
      <topNav>Download|reports</topNav>
      <bottomNav>
        <column>Main|Download</column>
        <column>Documentation</column>
        <column>reports|modules</column>
      </bottomNav>
      <bottomDescription>This is a very good project doing interesting
        and valuable things.</bottomDescription>
      <pages>
        <index project="project-id">
          <shortTitle>Welcome</shortTitle>
          <breadcrumbs>false</breadcrumbs>
          <toc>false</toc>
          <sections>
            <carousel />
            <body />
            <sidebar />
            <thumbs>2</thumbs>
            <columns>3</columns>
          </sections>
        </index>
        <developer-info>
          <toc>sidebar</toc>
        </developer-info>
      </pages>
    </reflowSkin>
  </custom>
  ...
</project>
```



## Bug tracker

Have a bug or a feature request? Please create an issue here on GitHub that conforms with
[necolas's guidelines](https://github.com/necolas/issue-guidelines).

https://github.com/olamy/reflow-maven-skin/issues


## Contributing

Fork the repository and submit pull requests.


## Original Author

This repo is a fork from https://github.com/andriusvelykis/reflow-maven-skin 

**Andrius Velykis**

+ https://andrius.velykis.lt
+ https://github.com/andriusvelykis



## Copyright and license

Copyright 2012-2013 Andrius Velykis

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this work except in compliance with the License.
You may obtain a copy of the License in the LICENSE file, or at:

   https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
