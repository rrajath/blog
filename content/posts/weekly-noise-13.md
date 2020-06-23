---
categories:
- weekly-noise
date: "2014-04-12T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-13]
tags:
- weekly
- noise
title: 'Weekly Noise #13 - Routing Algorithm'
---
This week we implemented the Routing Algorithm. We considered each intersection as a checkpoint and made a graph out of the navigation paths and the corresponding intersection points among them. Doing this helps us in finding out the best way to navigate to any parking slot. Most parking structures have uni-directional paths. That is, cars can go only in one direction. They pretty much don't have a choice in terms of choosing different ways to get to the destination parking slot. We used this
to our advantage in our routing algorithm. The directed graph that we created had nodes as the intersections and edges as the navigation paths in which cars can move. Below is a good illustration of how we visualized our routing algorithm.

![Routing Algorithm](/images/routing-algorithm.png)

As you see in the figure, N, S, E, W, NE, SW refers to the direction in which a car can move upon reaching that intersection point. The edges have a fixed value so that it would be easy to calculate distances. The arrows shown in red are part of the navigation path. From the start point to the destination the path is along the checkpoints - N, W, W, SW and E. And the distances along the path are calculated accordingly. The starting point is fixed since the app starts when the car enters
the lot. Once the user selects a parking slot, the route is calculated using the routing algorithm mentioned above. This should be giving the user a step by step navigation and voice alerts as and when he turns.
