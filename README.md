# MonoTouch IKVM Stubs

This project contains a Maven repository with IKVM stub jars for MonoTouch DLLs. It also has some
scripts that make it easier for me to udpate said stub jars when MonoTouch is updated.

If you are using [ikvm-monotouch] to develop iOS apps in Java and want to integrate the stub jars
via Maven, you can add the following to your POM:

```
  <repositories>
    <repository>
      <id>monotouch-ikvm-stubs</id>
      <url>https://raw.github.com/samskivert/monotouch-ikvm-stubs/master/maven</url>
    </repository>
  </repositories>

  <properties>
    <monotouch.version>6.2.3.0</monotouch.version>
  </properties>

  <dependencies>
    <dependency>
      <groupId>com.xamarin.monotouch</groupId>
      <artifactId>monotouch</artifactId>
      <version>${monotouch.version}</version>
    </dependency>
  </dependencies>
```

I don't have bindings for every single DLL provided by MonoTouch, but if you need one that's
missing, file an issue.
