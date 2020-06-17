---
categories:
- weekly-noise
date: "2014-03-29T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-11]
tags:
- weekly
- noise
title: 'Weekly Noise #11 - Online Phase'
---
The online phase is where scans are made periodically and matched with the offline database to find the current location of the user. When a scan is made the set of fingerprints are captured and compared with existing data in the database. With Nearest Neighbour algorithm, we predict 3 closest matches as to where the user could be. Initially, we were searching the whole database to find the 3 closest matches, but later on we reduced our search space significantly by searching
the current and the next 2 cells along the navigation path. If the database search yields a (or any) result, then the current location of the user will be updated to the yielded result. Else, we assume that there is no change in the user's location. This way, the search happens every 2 seconds and the position is updated accordingly as and when the car moves inside the parking lot. To illustrate this approach, refer the figure below.

![Position Prediction](/images/position-prediction.png)

As you can see in the image, the green cells are the next 3 predicted cells on the navigation path, the blue cells are rest of the cells and the orange cells are the ramps in the middle of the parking that takes you to the next level of the parking structure. The worst case is when the search results yield nothing thus not changing the position of the car on the map. If the search results do yield something, the car moves forward.
