FROM mcr.microsoft.com/vscode/devcontainers/universal:linux

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Configure apt and install packages
RUN \
  sudo apt-get update -yq && \
  sudo apt-get install -yq \
    software-properties-common \
    docker-compose && \
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 && \
  sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main' && \
  sudo apt-get update -yq && \
  sudo apt-get install -yq zulu-11 && \
  # cleanup
  sudo apt-get autoremove -y && \
  sudo apt-get clean -y

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog
