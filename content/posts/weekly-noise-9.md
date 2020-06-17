---
categories:
- weekly-noise
date: "2014-03-15T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-9]
tags:
- weekly
- noise
title: 'Weekly Noise #9 - Managing Database'
---
After last week's development, there was pretty good progress with the project. We managed to get the following things done:

- Created an activity to manage database: This activity is a drop down of table names with buttons to delete both the auto-increment sequences and the data from selected table. This becomes easier for testing so that pretty much all database related tasks can be handled on the fly.
- Abstracted scan logic from the main activity to make the code more readable and increase modularity.
- Some code cleanup: segregating classes to different packages.

The issue with colored cells in the grid still persists and I am not sure how to fix that. Will keep looking and I'll post an update soon if I find something that works.

There are plenty of parking cells and relatively fewer navigation cells. Also parking cells have pretty much the same data that does not change over time. So it is better to bulk load the data since we already know the positions of these cells on the grid. The only thing we don't know is that the neighboring navigation cell id for each parking cell. We don't know this because we still haven't scanned the neighboring navigation cells. Once we scan a navigation cell, we will assign the neighboring parking cells the corresponding id so that it will be easier to pick the navigation cell as the destination point.

Here's the target for next week:

- Bulk load the parking cell data
- Update neighboring parking cells to hold navigation cell IDs.
