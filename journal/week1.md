# Week 1 — App Containerization

## Required Homework

### Videos and instructional check boxes

All videos watched and instructional content followed.  I learnt during this process to pay close attention to indents at the start of lines in coding, when using copy and paste, since the spacing wasn't always quite as expected.

I had trouble when adding the databases and it's because I did this video in two halves.  I commited my code partway through which ended up comitting the dynamo-db file (which was later ignored by the .gitignore file).  Also for some reason I couldn't sign in to postgres within the terminal.  I installed it without problems and had the extension set up too, but it was failing at the password entry point and not recognising "password".

I was unable to see why this might be and I didn't like the dynamo-db file committed when it shouldn't be.  So I decided to go back a few steps and start again.

I learnt another big lesson here - be careful what you delete!  I thought I was just scrubbing the new code for the databases but must have deleted a whole file by mistake, since the docker-compose.yml was gone when I launched a new workspace.  So, I backtracked on the videos, followed instructions again and was able to get everything working, including postgres with "password" as expected and ignoring the dynamo-db file with .gitignore.

I also learnt how to delete files in Github during this process and how to view the history of commits.

## Homework Challenges

### Limitations

I researched how to install Docker on my local machine but unfortunately I am unable to install it, since I am running macOS 10.15.7 (Catalina) and Docker only supports from macOS 11 upwards.  I am unable to update my OS as I'm on a Mid 2012 MBP which is now receiving now further updates.  This also means I was unable to use Docker in VSCode.  VSCode itself works fine though - I used this in week 0 for the momento icon.

### What I achieved

I looked up best practices of Dockerfiles [here](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)

### What I attempted

Since I am unable to install Docker on my local machine, I thought I would try to install it on an EC2 instance instead and go from there, this also being a part of the challenges set.  I couldn't find any free tier AMIs pre-loaded with Docker and looked at two options.  A macOS AMI was my first thought but they are not free tier.  So I span up an Amazon Linux 2 instance and used this instead.

I was having trouble connecting to my instance via my SSH and so used EC2 Instance Connect instead.
I used [this guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/create-container-image.html), clicking on the tab shown here:

![Installing Docker](followed-this.png)

Installation seemed easy enough and I was able to create and edit a Dockerfile, then run a command to check it was visible, getting back this:

![Hello-world](docker-images-check.png)

On trying to view the web page I encountered this error:

![time-out](Site-not-reached.png)

I couldn't figure out why, thought I had struggled with the code below and so wondered if it was an apache issue.

![code screenshot](struggled-here.png)

I replaced "apt-get" with "yum", after some research suggesting that may be the issue.
I tried with "sudo", having already tried without.
None of these combinations worked and I was rewarded with the response "no package apache2 available" as shown below.

![no package apache2](No-package.png)

I wasn't able to solve this and so for now, I am chalking it up as a valuable learning experience none-the-less and will likely return to try and implement this at a later date.


