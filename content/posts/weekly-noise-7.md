---
categories:
- weekly-noise
date: "2014-03-01T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-7]
tags:
- weekly
- noise
- development
- environment
title: 'Weekly Noise #7 - My Development Environment'
---
Before I go to the details about the working of the project, I would like to explain my Development Environment - the tools I use and why I use them.

## IDE: IntelliJ IDEA 13

I am a huge fan of IntelliJ IDEA since I got my hands on it during my internship. This JetBrains team is pure genius and have put some serious thought while creating the IDE. It is so much better than Eclipse in terms of features, speed and performance. It also has Eclipse shortcuts which makes the transition from Eclipse a lot smoother. It has an awesome set of plugins, which are easy to load and install. It also has its own versioning system wherein you can dig up files from local history and revert to any previous version or just include part of the changes. There are plenty of good features to talk about and I'm sure any developer will fall in love with this IDE once s/he starts using it.

## Emulator: Genymotion

Accept it. The default Android emulator SUCKS! It's too slow and there's always a lag no matter what you do - open an application or just swipe screens. It consumes lot of memory making the laptop slow and also burning your lap (Oh yes. It heats up the laptop turning it into a furnace). Genymotion is, again, an emulator that I used during my internship and it's extremely fast. It's as if using your phone. The transitions are smooth and seamless and it consumes less memory. Android developers MUST give it a try.

## Version Control: Git

Git is obviously the primary choice when it comes to version control. Since I have a teammate in the project, it will be easier to collaborate using Git, maintain a Wiki, track issues, etc.

## Workflow: GitFlow

The workflow we follow is the famous [GitFlow](http://nvie.com/posts/a-successful-git-branching-model/) model. So basically the `master` branch is untouched until a major release. `develop` branch is where all the development happens. When we split up the tasks and each work on a feature, we create local branches, commit changes, merge the branch with `develop` and then delete that branch. This makes managing code base a lot simpler.
