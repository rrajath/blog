---
categories:
- weekly-noise
comments: true
date: "2014-04-26T00:00:00Z"
tags:
- weekly
- noise
title: 'Weekly Noise #15 - Experimental Results'
---
Two phones were used as part of testing – LG Nexus 4 and HTC One. Logging was done multiple times during the day, between 11am and 5pm. One floor was considered to test the accuracy of the algorithm. A total of 28 feature points were collected on one floor. About 150 scans were performed on each feature point and about 750 records were inserted into the database. With the above-mentioned algorithm and localization approach, an accuracy of at least 10m was obtained. We noticed that HTC One
did not record signal strengths less than - 90 and hence we had to tweak the code for data collection to make it uniform with the other phones.

### Challenges faced

We faced many challenges while working on this project.


- Unavailability of GPS was a huge drawback. We did not get GPS signal in the middle of the parking lot, but when we tried locating ourselves near the corners of the parking lot, the GPS was pointing to a different building altogether.
- Unavailability of wireless access points inside the parking lot. Since there are no wireless routers inside the parking lot and we depend on the beacons received from neighboring buildings, trilateration cannot be applied which became a huge drawback for accuracy.
- In the online phase, some wireless routers were turned off at certain times, mostly during the evening and weekends. This delays data collection process and also hinders the actual working of the app since there are no access points to match the existing database with.
- Phones detect signals differently. We tested our app with LG Nexus 4 and HTC One. We observed that HTC One is incapable of recognizing weak signals. So if data collection is done with a Nexus 4, HTC One will have errors in matching fingerprints since most of the signals captured and stored in the database will be outliers to HTC.
- We tried using accelerometer, gyroscope and other sensor to detect movement, direction and orientation. But this posed a problem since the results from sensors change in microseconds time and we will not get an accurate reading of the sensors.
- We tried classifying each feature point into different classes and use Support Vector Machines to localize. But this approach does not really work with less data in this case since we have less number of feature points.
- The signal strengths from wireless routers keep varying since they depend on many factors such as weather, location and number of cars or people inside the parking lot. Also, some scans identify a good number of access points while some don’t. This instability makes it difficult to match fingerprints from the database thus resulting in inaccuracy.
