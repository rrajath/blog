---
categories:
- weekly-noise
date: "2014-03-08T00:00:00Z"
aliases: [/weekly-noise/weekly-noise-8]
tags:
- weekly
- noise
title: 'Weekly Noise #8 - Database Schema'
---
As per the design, we created database schemas, tables and other relevant classes:

Database:

- `parking_table` to store information about the parking slots.
- `navigation_table` to store information about navigation path.
- `fingerprint_table` to store information about fingerprints scanned in different cells on the grid.

Other classes:

- Created two activities - one to display the grid and one to scan and save fingerprints.
- Created entity beans corresponding to the database schemas that were created.
- Added multiple scans feature wherein you can perform any number of scans you want (using Start and Stop buttons) and the mean RSS value will be considered.

To make a grid we tried TableLayout, LinearLayout and GridLayout, but finally ended up using GridView to represent the grid since that is the easiest way to handle parking cells and navigation cells in our project. I changed the color of the selected cell to indicate that the scan has been performed. The only issue is that upon scroll, the colored cells change position; so every time there's a scroll where the colored cell goes off the screen, a different cell is colored upon scrolling back. Nonetheless, it does not affect the values in the grid, it's only the colored cell that changes.

Also, a DataSource class contains methods to perform CRUD operations on tables. For each fingerprint that is scanned, a record will be inserted in the `navigation_table` with the respective grid co-ordinates. Each record will point to a fingerprint id that was generated during the scan.

Plan for next week:

- Fix the colored cell issue
- Abstract the scanning logic from the Activity
- Add an activity to view and manage database
