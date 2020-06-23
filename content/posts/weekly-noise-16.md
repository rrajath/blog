---
categories:
- weekly-noise
date: "2014-05-03T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-16]
tags:
- weekly
- noise
title: 'Weekly Noise #16 - Wrap up and future enhancements'
---
All in all, this project was an extremely interesting one. We got to learn a lot from this project, especially being new to Android development.

In conclusion, this project demonstrates a car navigation system as an Android app that uses one of the localization techniques, namely, WiFi Fingerprinting to navigate a car in a restricted indoor space. Due to poor visibility of satellites inside an indoor structure, fingerprints from the available access points can be used for navigation. Although this method of navigating cars inside indoor spaces are basically smartphone apps that add nothing to the existing infrastructure, the
downside of this approach is that one has to not only depend on the availability of routers during the offline/online phase, but also keep track of the addition or deletion of routers between offline and online phases.

We made few mistakes which we realized too late in the project and it was too costly to correct. Some of them are:

- Making our own routing algorithm instead of using Dijkstra's. Had we used Dijkstra's shortest path algorithm, our code would have been much simpler and would have worked for pretty much any parking lot.
- Not using a MapView. Being new to Android, it was hard for us to play around with MapView and understand how to make a pointer move on the map as the car moves in the parking lot. We postponed that task till the end, though researching about it periodically. But that's one major drawback with this project.
