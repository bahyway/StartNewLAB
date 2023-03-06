
# **_Creating a Docker Image with Git Installed_**

Version control is one of the most important aspects of any software development project and when we talk about version control, there is no better tool than Git. The majority of the developers depend upon Git to manage and share their project components among the team members. 

Even if you are running your project on Docker, you can still access your git account inside Docker Containers. All you need to do is just install Git inside your Docker Container. In this article, we will discuss exactly the same. We will create an Ubuntu Image, install Git inside it, create a Container associated with the Image, and verify whether Git has been installed or not.

To create a Docker image with git follow the below steps:

***Step 1: Create the Dockerfile***
You can use the following template to create your Dockerfile. 
```dockerfile
FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install git
```
In the above Dockerfile, we have specified instructions to pull the Ubuntu base image, update the OS, and install Git inside it.

***Step 2: Building the Image***
After creating the Dockerfile, we can build the Docker Image using the Docker build command.

```bash
sudo docker build -t sample-image .
```

***Step 3: Verify whether Image build***
To verify whether the image has been built or not, you can list all the Images.
```bash
sudo docker images
```

***Step 4: Run a Container associated with the Image***
After you have built the Image, you can run the Container associated with the Image, using the Docker Run command.

```bash
sudo docker run -it sample-image bash
```

The above command creates and runs a Container and fires up the bash of the Docker Container.

***Step 5: Verifying the Installation***
After you have the bash opened up, you can verify whether Git has been installed or not by checking the version of Git.

```bash
git --version
```
This command returns the version of the git installed.




### **_References_**
1. [Creating a Docker Image with Git Installed](https://www.geeksforgeeks.org/creating-a-docker-image-with-git-installed/)
2. [Lab #1: Create an image with GIT installed](https://dockerlabs.collabnix.com/beginners/dockerfile/lab1_dockerfile_git.html)
3. [Working with Jenkins — An Introduction](https://akshayavb99.medium.com/working-with-jenkins-an-introduction-48ecf3de3c25)
4. [Working with Jenkins, Docker, Git, and GitHub — Part II](https://akshayavb99.medium.com/working-with-jenkins-docker-git-and-github-part-ii-d74b6e47140c)
5. [Creating a Network in Docker and Connecting a Container to That Network](https://www.geeksforgeeks.org/creating-a-network-in-docker-and-connecting-a-container-to-that-network/?ref=rp)
6. [How to Get Code into a Docker Container](https://blog.cloud66.com/how-to-get-code-into-a-docker-container)
7. [Connect to remote Docker over SSH](https://code.visualstudio.com/docs/containers/ssh)
8. [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers)
9. [Create a Dev ContainerCreate a Dev Container](https://code.visualstudio.com/docs/devcontainers/create-dev-container)
10. [VS Code / GitHub Codespaces Dev Container Definitions](https://github.com/microsoft/vscode-dev-containers)
11. [Creating a codespace for a repository](https://docs.github.com/en/codespaces/developing-in-codespaces/creating-a-codespace-for-a-repository)
12. [Tidy up your machine with Visual Studio Code Dev Containers](https://dev.to/this-is-learning/tidy-up-your-machine-with-visual-studio-code-dev-containers-256n)
13. [Using PostgreSQL inside VS Code Dev Containers & GitHub Codespaces](https://www.youtube.com/watch?v=JTHTWp9DIZQ)
14. [VSCode, Docker, and Github Pages](https://www.allisonthackston.com/articles/vscode-docker-github-pages.html)
15. [Beginner's Series to: Dev Containers](https://www.youtube.com/playlist?list=PLj6YeMhvp2S5G_X6ZyMc8gfXPMFPg3O31)