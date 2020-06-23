---
categories:
- weekly-noise
comments: true
date: "2014-02-22T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-6]
tags:
- weekly
- noise
title: 'Weekly Noise #6 - Design'
---
## ParkAssist

In my previous post I gave a brief overview about the project that I was working on and its problem statement. After much research about how WiFi localization works and everything that we need to know about it, we started working on the design. Our approach uses WiFi localization, accelerometer and gyroscope for navigating the car. By the way, the name of the app is called ParkAssist. The project will up on GitHub and will have regular commits for the next couple of months.

## What is a WiFi fingerprint?
A fingerprint at a location is a set of access points and their corresponding signal strengths that can uniquely identify that location. Any point inside a building having multiple access points will have different set of fingerprints. Since we have different sets of (access point, signal strength) pairs for each location, we will be able to identify each location uniquely.

## Design
We obtained the blueprint of the parking lot from our college Facilities Department. The parking lot has 3 floors with about 200+ slots spread out across each floor. We observed that the parking lot resembled a grid and hence we decided to divide the parking lot into a grind containing cells each of which must have a fingerprint associated with it. Later we realized that we don't have to record fingerprints for each cell, per se, but instead just the ones that lie on the navigation path. This is because the car only has to navigate up to the nearest point on the navigation path where the slot is; so we don't really need to know the fingerprint in the parking slot.

## Working
The process is divided into two phases:

* Offline Phase
* Online Phase  


In the offline phase, each cell along the navigation path is associated with a particular fingerprint and these fingerprints are recorded and stored in a database. The database will be used in future during the online phase in order to track the location of the user.

AS SHOWN IN THE FIGURE BELOW, the grid is divided into cells. ParkCells are the parking slots and NavCells are the cells along the navigation path. The offline phase is only about storing fingerprints at each navigation cell into a database.

![Grid Illustration](/images/grid-illustration.png)

In the online phase, as the car enters the lot, the application is activated using GeoFencing technique. Once the application is activated, the user is shown the parking lot grid where he can choose a parking slot. When the user selects a parking slot, the neighboring navigation cell is selected as the destination point. We know the start point of the car since it is the entrance of the parking lot. We also continuously track the movement of the car using accelerometer and gyroscope. This technique combined with fingerprint matching will give an accurate location of the car and the car is routed from the start point to the destination point. This becomes a simple routing problem on a grid with predefined navigation path.

## My Development Environment

**IDE**: IntelliJ IDEA 13.0[Insert Link]  
**Emulator**: Genymotion[Insert Link]  
**Android version**: 4.2 and above  
**Database**: SQLite  
**Version Control**: Git  
**Workflow**: [GitFlow](http://nvie.com/posts/a-successful-git-branching-model/)

This being said about the project, here's the plan for next week:

- Design the database
- Create entity beans for each table
- Create activities to display grid and perform scans
- Write logic to compute mean values for each fingerprint
