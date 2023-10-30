# Automation project with Cucumber and Karate 

This repository contains a Automation test for an API with Karate framework.




## Table of contents
 - [Introduction](https://github.com/stiagoq/prueba_arus_karate/tree/main#introduction)
 - [Getting started](https://github.com/stiagoq/prueba_arus_karate/tree/main#getting-stared)
 - [Project setup](https://github.com/stiagoq/prueba_arus_karate/tree/main#project-setup)
 - [Running the tests](https://github.com/stiagoq/prueba_arus_karate/tree/main#running-test)
 - [General implementation details](https://github.com/stiagoq/prueba_arus_karate/tree/main#general-implementation-details)
 - [Tests](https://github.com/stiagoq/prueba_arus_karate/tree/main#test)

## Introduction 

This project contains examples of test automation using Cucumber and the Karate framework. Cucumber is tool that allows you to create automation test using the Gherkin format, which uses the natural lenguaje used  in behavior-driven development (BDD).

Karate is a tool of open-source to combine API-test-automation, mocks and performance testing. Karate labs can check functionality, reliability, logic validation of the APIs.




## Getting stared

The following instructions are for running this automation test repository on your local machine.

### Requirements 
To run the project on your local machine it is necessary to install:


```bash
  Java JDK 8 or superior 
  Gradle
```

## Project setup 
Steps for setting up a development environment:
- Clone this repository in your local machine.
- Open the automation project in integred development environment (IDE), for instance; IntelliJ IDEA, VScode, Eclipse, etc. For this case IntelliJ IDEA was used
- It is necessary to have the dependencies found in the build.gradle file.


## Running test
- You can compile the project with following command:

```bash
gradle test
```
- You can running the project in the IDE 


## General implementation details
The test scenario are created  in the feature files that have ending *.feature*, these files supports the Gherking format. 

The basic elements to create a scenario in karate such as; feature and scenario. Feature provides a short description of the functionality that it tests and Scenario is basically the business rule that it wants to test. Scenario contains the keywords Given, When and Then.  

In karate is important the [order of folders](https://github.com/karatelabs/karate#naming-conventions) that contain the files with test scenarios because karate must know where the resources necessary for execution automation test are located.
```bash
   📦prueba_tyba_serenity_bdd
   ┣ 📂src
   ┃ ┣ 📂 main
   ┃ ┃ ┣ 📂java
   ┃ ┃ ┃ 
   ┃ ┃ ┃   
   ┃ ┃ ┃    
   ┃ ┃ ┃         
   ┃ ┃ ┃        
   ┃ ┃ ┃       
   ┃ ┣ 📂test
   ┃ ┃ ┣ 📂java
   ┃ ┃   ┣ 📂features
   ┃ ┃    ┣ 📦TestRunner
   ┃ ┃    ┣  📦ManageTest
   ┃ ┃     
   ┃ ┃ ┣ 📂resources
   ┃ ┃ ┃   ┣ 📂jsonfile
   ┃ ┃ ┃      
   ┣ 📂target
   ┣ 📜.gitignore
   ┣ 📜bulid.gradle
   ┣ 📜README.md
```


`src/test/java/features`: This folder contains the feature files where the test scenarios are written and this folder also contains the java class that allows the test execution. Either individually or in parallel.

`src/test/java/resources/jsonfile`: This folder contains the JSON files that you can use in the scenarios. 

## Test 
Test scenarios are created in the feature files using the Gherkin language. In the scenarios the keywords Given, When and Then are used. These words give context about the automation test workflow. Given indicates the API path, When indicates the API request and Then checks the API response.

### Build with
- [Cucumber](https://cucumber.io/)
- [Karate labs](https://www.karatelabs.io/)
- [Java](https://www.java.com/es/)

### Author 
- [@Santiago Quintero](https://github.com/stiagoq)
