---
categories:
- weekly-noise
date: "2014-04-05T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-12]
tags:
- weekly
- noise
title: 'Weekly Noise #12 - Geofencing'
---
Geofencing is a concept wherein a fence is created around a particular area and any action can be performed once a mobile device enters this fence. Google detects when the mobile device enters this fence and allows the developer to invoke any activity or service. So the way it works is that it expects an x,y coordinate and a radius parameter. The radius parameter creates a circular fence around the co-ordinates.

We have used this concept in our project in order to detect if the user is entering the parking structure. If so, we invoke our application and set the starting point as the entrance of the parking structure and present the user with the list of available parking slots to choose from. Once the user chooses the parking slot, the app calculates the route and starts navigating.
