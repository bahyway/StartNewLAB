# **_Getting Started with Git Basics_**


Git is basically a content tracker. Git shares common principles of most version control systems. However the distinct feature that makes Git unique among the variety of tools is that it is a distributed version control system. This distinction means Git is fast and scalable, has a rich collection of command sets that provides access to both high-level and low-level operations, and is optimized for local operations.

## **_Git Components_**
Before we dive into the world of git commands, let’s take a step back and visualize the overview of components that make up the Git ecosystem:
<img src="../images/Git.png" width=200>

## **_Git Server_**
- A Git Server enables you to collaborate more easily because it ensures the availability of a central and reliable source of truth for the repositories you will be working on.
- A Git Server is also where your remote Git repositories are stored; as common practise goes, the repository has the most up to date and stable source of your projects.
- You have the option to install and configure your own Git Server, or forgo the overhead and opt to host your git repositories on a reliable third party hosting site.


## **_Git Clients_**
- Git clients are of two types: the git command-line and the git GUI tools.
- When you install and configure a git client, you will be able to access the remote repositories, work on a local copy of it, and push changes back to the git server.
- There are many other excellent GUI tools such as GitHub for Desktop, Visual Studio etc.

## **_Different Version Control Types_**
There are two types of version control systems (VCS), known as “centralized” and “distributed”.

***Centralized systems*** have a copy of the project hosted on a centralized server, to which everyone connects to in order to make changes. Here, the “first come, first served” principle is adopted: if you’re the first to submit a change to a file, your code will be accepted.

In a ***distributed system***, every developer has a copy of the entire project. Developers can make changes to their copy of the project without connecting to any centralized server, and without affecting the copies of other developers. Later, the changes can be synchronized between the various copies.

## **_Advantages of Distributed Version Control Systems_**

- With a distributed system, you can work on your copy of the code without having to worry about ongoing work on the same code by others.
- What makes it even better is that any distributed copy of the project can contain all the history of the project.
- A distributed system also ***lets you work offline***, meaning you can make changes without having access to the server that stores the central repository.
- Another advantage of distributed systems is that you can ***sync your repositories among yourselves***, bypassing the central location. Let’s say the access to the main server goes down and you have to collaborate with a colleague. You can share changes with your colleague and continue to work on the project together, and then later push all your changes to the location everyone has access to.
- In a centralized system, anyone who makes a change needs to be given access to the central location. In contrast, in a distributed system, new developers ***can make changes to their own repositories without being granted write access***, while more experienced contributors can be given write access and the ability to review other contributions before merging them into the repository.
- ***Managing access is easier*** in distributed systems.
















### **_References_**
[Getting Started with Git Basics](https://www.golinuxcloud.com/git-basics/)