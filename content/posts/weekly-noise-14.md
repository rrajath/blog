---
categories:
- weekly-noise
date: "2014-04-19T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-14]
tags:
- weekly
- noise
title: 'Weekly Noise #14 - Navigation and Voice Alerts'
---
This week we concentrated on Navigation and Voice Alerts. Calculation of the route path is quite easy and it's a one-time task, the results of which will be used repetitively for navigation. Navigation in itself is quite complicated since it involves detecting the location of the user and then directing him accordingly. So the whole process banks on the accuracy of the current location of the user. Any mistake in the location of the user will result in displaying the directions too early or
too late thus leading to a bad user experience. Hence this needs efficient calibration in terms of number of times the search for the location happens, the number of navigation cells to be considered for search and the like.

We have used the current navigation cell and the next two cells along the navigation path during testing and fine tuning and they ended up giving good results. What we employed was to detect intersection points in the route digraph and alert the user when he reaches the intersection point. Thus in the search for the next probable position of the car along the navigation path, if the returned grid coordinate is one of the intersection points, the alert is displayed to the user asking him
to make a left turn or a right turn accordingly. Similarly, if the destination is among the next 3 cells, then the last voice alert is displayed which says - your destination is on the left (or right).

Voice alerts were easy since all it expects is a string and it says whatever is passed through that string. We maintained all the voice alerts in a queue and these were computed during the route calculation. As and when an intersection is approached, the queue is emptied one by one.
