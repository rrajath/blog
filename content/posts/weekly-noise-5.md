---
categories:
- weekly-noise
date: "2014-02-15T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-5]
tags:
- weekly
- noise
title: 'Weekly Noise #5 - My Masters Project'
---
I would like to give a glimpse of what my Masters Project is all about and what I will be working on in the next couple of months. The project involves spatial databases, navigation and a ton of Android programming.

## Parking in Restricted Spaces
The idea is to develop a Car Navigation System that enables a user to drive around a parking lot and navigate him to the parking slot of his choice without using battery intensive sensors like GPS.

The project is divided into 3 stages:

- Create a digital map of the parking lot showing different parking slots and the navigation paths.
- Use a low-power method such as WiFi localization to identify when the car enters the space, and thus trigger retrieval of the developed map and dead-reckoning.
- Provide navigation on the smartphone to a given location in the restricted space; the location will be given as a parameter to the navigation system developed.

The parking lot we chose is a multi-level structure where one cannot rely on GPS for navigation since GPS doesn't work so well indoors as it does outdoors. Besides, GPS does not give meter-level accuracy to differentiate between different parking slots. So it would be efficient to use WiFi localization to accurately determine where a car is in the parking lot and then use the same approach to navigate the car to its destination.

Since this is a significantly huge experimental project, I am working on it with another Masters student. A working demo of the project is expected by the end of April.
