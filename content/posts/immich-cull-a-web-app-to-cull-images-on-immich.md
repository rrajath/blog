+++
title = "Immich Cull: A web app to cull images on Immich"
author = ["Rajath Ramakrishna"]
date = 2026-07-16T19:21:00-07:00
lastmod = 2026-07-16T19:25:04-07:00
draft = false
+++

Most of us take a lot of photos on our phones and don't do a good job of cleaning them up by deleting bad/redundant ones. As time goes on, more and more photos get accumulated and they fill up both the phone and the cloud storage we back up our photos to, only to reach a point where we're out of storage and need to pay for more. Or, we have so many photos that it's exhausting to look for a specific picture in a sea of similar photos.

This happened to me and I wanted a simple solution to cull photos. Besides what I have on my phone, I store my photos on my Synology NAS. I couldn't find a good culling app that supported deleting photos from the NAS. There are ways to mount the NAS and feed the files to the culling app, but I just wanted a simple solution where I could just compare two images, zoom in on both images to see which one's better shot, pin images and delete them in bulk. Plus, in the age of LLMs where coding agents have gotten so much better, I decided to build my own culling app with exactly the features and the keyboard shortcuts I wanted.

So, all I wanted were the following features:

1.  **Side-by-side comparison of photos**. These would be photos that were taken together. I didn't need similarity detection, I didn't need an ML pipeline or a vector database to find similar images, nothing. I just wanted adjacent photos side by side so I could compare them.
2.  **Synced zooms and bulk deletes**. I wanted both photos that were side by side to sync the zooming and panning actions. That way, I could look at the same part of both photos. I also wanted to mark photos for deletion and then bulk delete them.
3.  **Keyboard shortcuts for navigation**. I wanted to do everything from keyboard - navigation, marking photos for deletion, performing bulk deletes, everything except maybe zooming photos.
4.  **Grouping**. I didn't want to go through my library of tens of thousands of photos and comparing each of them side-by-side. I instead wanted the photos that were taken close to each other were grouped together and I would only go through a handful to a couple dozen photos at a time. Much less cognitive load that way.

With all this in mind, I ended up building [Immich Cull](https://github.com/rrajath/immich-cull/) - a web app that loads photos from [Immich](https://immich.app/) and presents a side by side comparison of adjacent images. It had the ability to pin images, mark for deletion and bulk delete. I also made sure to add keyboard shortcuts to perform all the operations.

**Note: Before I go through the app with screenshots, I must note that this web app was abandoned within a few weeks. There are several bugs and I didn't bother fixing them. I realized I had to be in front of my laptop to use this and that wasn't always the case. I'll be writing another blog post where I built a culling app for Android devices and that one's a lot more mature and feature rich.**


## Screenshots {#screenshots}

Here are some screenshots and screencasts of Immich Cull. I'll explain what's going on in each so that there's context. I have blurred some of the photos for privacy.


### Homepage {#homepage}

![](/images/immich-cull-homepage.png)
This is the home page with two main entry points. The Library page takes the user through the images in the library. I'm only loading them 7 days at a time. The Albums page is for culling photos in a specific album. This is not something I need because the creation of an album signifies that the photos are already selected. But there's a use case here where I could just put all the images taken (including duplicates) during a trip into an album in order to share it with people as soon as the trip is over, instead of taking days or weeks to sort through all the images and then create the album.


### Library {#library}

![](/images/immich-cull-library.png)
The Library is basically a reverse chronological view of all the photos and I could pick any photo and start my culling.


### Albums {#albums}

![](/images/immich-cull-albums.png)
This is for culling images inside albums. Works very similar to Library view. I can jump into any image in the album and start culling.


### Culling Experience {#culling-experience}

<video width=100% controls autoplay>
    <source src="/videos/ImmichCull_UX.webm" type="video/webm">
    Your browser does not support the video tag.
</video>

This shows a side by side comparison of images. I could pin an image and go through rest of the images on the right and mark images for deletion.


### Settings {#settings}

![](/images/immich-cull-settings.png)
Besides the obvious configuration for setting the Immich instance URL and the API key, there are settings that define how long of a time window I should define for burst shots. That is, culling is usually done on similar photos, especially the ones taken around the same time within a narrow time window. That's what the Group Assets button does on the Library and the Album page.


### Keyboard Shortcuts {#keyboard-shortcuts}

![](/images/immich-cull-keyboard-shortcuts.png)
This is self explanatory and I wanted shortcuts that were easy to remember and use.


## Lessons Learned {#lessons-learned}

This was built a few months ago before [Claude Design](https://claude.ai/design) was released. I had previously, and naively, tried to build web apps by prompting Claude to "create beautiful and elegant web pages" only to find that it did a really bad job. I didn't know there were skills to help with that. Especially, the [frontend-design](https://github.com/anthropics/skills/tree/main/skills/frontend-design) skill. So, that's what I used for this and the web app actually looks decent. I didn't care so much about UI except that it had to look pleasant enough to use. And what Claude ended up building was good enough.

I also didn't think through the features and the UX much. I wanted to get the web app built quickly and I was impatient. This was one of the first web apps I built using Claude Code, and I didn't spend enough time thinking through the experience, feature set, etc.

I'm writing this blog post a couple months after I built this and my learning/advice would have been to use the frontend-design skill while designing UI for web apps. But now that we have Claude Design, it does a much better job with frontend UI. And not just that, we can give feedback about specific UI elements.
