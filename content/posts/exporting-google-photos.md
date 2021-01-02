---
title: "Exporting Google Photos"
date: 2021-01-02T15:17:57-08:00
tags:
- google
- photos
- export
---

I recently purchased a [Synology NAS](https://www.synology.com/en-us/products/series/home) and I started hosting a media server containing movies, TV shows and photos. I had stored all my photos in Google Photos for the past several years. But recently Google announced that [it was going to charge for storing photos as they near the storage limit of 15GB](https://blog.google/products/photos/storage-changes). I knew of [Google Takeout](https://takeout.google.com) and I downloaded some 44 GB of photos which were packed in about 23 zip files.

I found that these zip files had lot of repetitive files, seemed like a lot of duplicates. I ended up extracting all of them to a single folder. And, I saw a lot of json files mixed in. When I searched online, I found couple of tools to get rid of them: [Metadata Fixer](https://metadatafixer.com) and [Google Photos Takeout Helper](https://github.com/TheLastGimbus/GooglePhotosTakeoutHelper). These didn't work well and I thought of writing my own tool to do the job for me.

I later came across a Reddit post where [somebody posted an alternative for exporting Google Photos](https://www.reddit.com/r/googlephotos/comments/jyyg53/psa_i_found_an_alternative_to_google_takeout_for). The alternative is basically to select all the photos per year and download them via UI. This will not give us any json files. It just downloads the photos as is. This was perfect and worked for me.
