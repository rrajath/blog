---
categories:
- weekly-noise
date: "2014-03-22T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-10]
tags:
- weekly
- noise
title: 'Weekly Noise #10 - Offline Phase Complete'
---
In order to bulk load the parking cell data, I chose to use a JSON file as it is simpler to edit cell information (if need be). I wrote a Python script to generate the JSON file with parking cell information. The JSON file is an array of parking cells wherein each element in that array has the grid co-ordinates. With this information, I will be able to bulk insert information about all parking cells into the database. A simple button on the Intro Activity takes care of this task.

Since each navigation cell has a parking cell on either side, the navigation cell id for those parking cells must be updated. The DataSource file has all the relevant methods to do these operations.

Also, the colored cell issue still persists and I'm almost on the verge of giving up in order to not waste any more time on this. I am instead thinking of reducing the height of the cells in the grid view to make it non-scrollable.

I also added a background image (the floor plan) to the grid view and made the grid transparent, but for some reason the image is distorted. I am currently not concentrating on fixing that issue since the offline phase is used for our reference to build the database with fingerprints and will not be shown to the user.

This completes the development for the offline phase. Any more development on this will only be bug fixes. The online phase will be a new app altogether that involves tracking current user location, routing algorithm and navigation.

So here's the target for next week:

- Explore a way to train the offline data using data mining algorithms. Also explore other ways to find nearest match of fingerprints with the offline database.
- Implement GeoFencing.
