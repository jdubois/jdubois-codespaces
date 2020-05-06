# Codespaces Dockerfile for developing with modern Java

This project is to help Java developers work with Visual Studio Codespaces.

It is made for [JHipster](https://www.jhipster.tech/) users and all other modern Java developers.

## More information about Codespaces

- [Codespaces main page](https://online.visualstudio.com/)
- [Codespaces login page](https://online.visualstudio.com/login)
- [Codespaces documentation](https://docs.microsoft.com/en-us/visualstudio/online/overview/what-is-vsonline)

## The jdubois/jdubois-codespaces Docker image

This Docker image is based on [mcr.microsoft.com/vscode/devcontainers/universal:linux](https://github.com/microsoft/vscode-dev-containers/tree/master/containers/vsonline-linux), which is the default Docker image for Codespaces.

- As it's based on the default Codespaces Docker image, it has all the tools and utilities from the default image
- It replaces the default Java 8, OpenJDK-based image with Azul Zulu's Java 11 so we have a more recent and supported JDK
- It adds Docker Compose, as many Java developers use it to run their services

This image is available on DockerHub at [jdubois/jdubois-codespace](https://hub.docker.com/r/jdubois/jdubois-codespaces).

[![Docker Pulls](https://img.shields.io/docker/pulls/jdubois/jdubois-codespaces.svg)](https://hub.docker.com/r/jdubois/jdubois-codespaces/)

## How to use this image

You need to add a `.devcontainer/devcontainer.json` to your repository:

```json
{
  "name": "jdubois-codespaces",
  "image": "jdubois/jdubois-codespaces",
  "settings": {
    "terminal.integrated.shell.linux": "/bin/bash"
  },
  "forwardPorts": [8080, 9000],
  "extensions": [
    "dbaeumer.vscode-eslint",
    "ms-azuretools.vscode-docker",
    "ms-vscode.azurecli",
    "Pivotal.vscode-boot-dev-pack",
    "Pivotal.vscode-spring-boot",
    "redhat.java",
    "redhat.vscode-yaml",
    "VisualStudioExptTeam.vscodeintellicode",
    "vscjava.vscode-java-debug",
    "vscjava.vscode-java-dependency",
    "vscjava.vscode-java-pack",
    "vscjava.vscode-java-test",
    "vscjava.vscode-maven",
    "vscjava.vscode-spring-boot-dashboard",
    "vscjava.vscode-spring-initializr"
  ]
}
```

Or if you can download the [devcontainer.json](https://raw.githubusercontent.com/jdubois/jdubois-codespaces/master/devcontainer.json) provided in this directory:

```bash
curl -fsSL https://raw.githubusercontent.com/jdubois/jdubois-codespaces/master/devcontainer.json --output devcontainer.json
```

This configuration file is made for JHipster projects, for normal Java developers you probably only want to open up port 8080.

It will configure Codespaces with some popular and useful Visual Studio Code extensions, to develop with Java and Docker.

## Test with a sample project

The [jdubois/jhipster-vs-codespaces](https://github.com/jdubois/jhipster-vs-codespaces) is a JHipster project which is configured to use the `jdubois/jdubois-codespaces` Docker image. The configuration is available in the [.devcontainer/devcontainer.json](https://github.com/jdubois/jhipster-vs-codespaces/blob/master/.devcontainer/devcontainer.json) file.

## License

You are free to use this Docker image under the [Apache 2 license](LICENSE.txt).
