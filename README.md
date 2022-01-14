# Generating the archetype project skeleton

## The structure

1. The `src/main/resources/archetype-resources` folder stores all template resources used to generate projects from this archetype.

2. The `src/main/resources/META-INF/maven-archetype-metadata.xml` is the archetype description file, including the properties, file sets etc.

3. The `src/test/resources/projects` includes resources to test this archetype, including the properties applied to generate new projects and the goal run in the host integration-test phase.

## Publish Maven Archetype

You can publish the Archetype to your local Maven repository:

```shell
mvn clean install
```

## Archetype Usage

Prerequisites:

- Java >= 11
- Maven > 3.6.1

Bootstrap a new Maven project using an archetype on Mac and Linux:

```shell
mvn archetype:generate \
  -DarchetypeGroupId=hu.otpotthon \
  -DarchetypeArtifactId=custom-maven-archetype \
  -DarchetypeVersion=1.0.0 \
  -DgroupId=hu.otpotthon.demoservice \
  -DartifactId=demo-service \
  -Dservice-name=DemoService \
  -DinteractiveMode=false
```

Bootstrap a new Maven project using an archetype on Windows (CMD or PowerShell):

```shell
mvn archetype:generate "-DarchetypeGroupId=hu.otpotthon" "-DarchetypeArtifactId=custom-maven-archetype" "-DarchetypeVersion=<1.0.0" "-DgroupId=hu.otpotthon.demoservice" "-DartifactId=demo-service" "-Dservice-name=DemoService " "-DinteractiveMode=false"
```
