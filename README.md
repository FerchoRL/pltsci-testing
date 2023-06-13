# Platform Science Software Karate Testing

- ## 💻 Pre-requisites

1. [Apache Maven](https://maven.apache.org/download.cgi) --> 3.9.2 or above
2. [Java JDK](https://www.oracle.com/java/technologies/downloads/#java17) --> 8 or above
3. [Visual Studio Code](https://code.visualstudio.com/download) or any coding editor of your preference

## 🚀 Install the project

### Apache Maven

1. Download the Binary zip archive latest stable version or any version you prefer
2. Once downloaded extract the ".zip" file. and save in program files path
3. Make sure its added on the local variables
    1. Open main windows' menu, search for "Environment Variables" 
    2. Open "Environment Variables" option.
    3. In the New System Variable window add MAVEN_HOME variable point them to our Maven folder: *C:\Program Files\apache-maven-3.9.1*
    4. Edit the Path System variable adding this path: *%MAVEN_HOME%\bin*
4. To make sure everything is correct execute the following command in your terminal:

```bash
mvn -version
```

### JDK

1. Download the x64 Installer latest stable version or any version you prefer
2. Launch the installation file. Follow the installation wizard clicking next
3. Make sure its added on the local variables
    1. Open main windows' menu, search for "Environment Variables" 
    2. Open "Environment Variables" option.
    3. In the New System Variable window add JAVA_HOME variable point them to our Java JDK folder: *C:\Program Files\Java\jdk-18.0.1.1*
    4. Edit the Path System variable adding this path: *%JAVA_HOME%\bin*
4. To make sure everything is correct execute the following command in your terminal:

```bash
java --version
```

### Visual Studio Code

1. According your OS select and download the VSCode installer.
2. Once it is downloaded, run the installer
4. To make sure everything is correct open the pltsci project on Visual Studio Code

## 🏃‍♂️ Run the project

1. Open a new *Command prompt* terminal From the terminal tabs UI. Is on the right side of the terminal view
2. Make sure point to *pltsci* folder. It is inside the *pltsci-testing* folder. If not run below command

```bash
cd .\pltsci\
```
3. Depending on what you need to execute, run the following commands
    1. Run all the Platform Science suite test

    ```bash
    mvn test
    ```

    *Or*

    ```bash
    mvn test -Dkarate.options="--tags @AllPltSciTags"
    ```

    2. Run the Platform Science specific suite test 

    ```bash
    mvn test -Dkarate.options="--tags @CleanAndNavigate"
    ```

    3. Run all the Platform Science suite test according to the environment needed

    ```bash
    mvn test -Dkarate.env="qa"
    ```

    3. Run the Platform Science specific suite test according to the environment needed

    ```bash
    mvn test -Dkarate.options="--tags @CleanAndNavigate" -Dkarate.env="qa"
    ```

## 📜 Obtein Report

1. Navigate to the target folder in the File browser *pltsci-testing\pltsci\target*

2. Enter to karate-reports folder

3. Double click the karate-summary.html and verify the report
