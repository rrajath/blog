+++
title = "StoicQuotes - My first Raycast extension"
author = ["Rajath Ramakrishna"]
date = 2023-02-15T00:38:00-08:00
lastmod = 2023-02-15T00:38:12-08:00
draft = false
+++

I [previously wrote about Raycast](https://rrajath.com/posts/raycast-my-new-favorite-macos-app) and how it has replaced a lot of apps I use. One of the things I mentioned about Raycast is that the developer experience is excellent. This post briefly talks about my journey in creating [StoicQuotes](https://www.raycast.com/rrajath/stoicquotes), a Raycast extension.


## Background {#background}

I’ve been practicing Stoicism for many years and one of the things I do every now and then is I read a quote by a stoic philosopher like Marcus Aurelius, Epictetus or Seneca and reflect on that quote. Pretty much all stoic quotes by these three philosophers are timeless and apply to our daily lives, and reading one and reflecting on it helps me get out of my autopilot and put things in a new perspective.


## How the extension came to be {#how-the-extension-came-to-be}

My goal was the following:

1.  The quote should be easily accessible (I shouldn’t have to search for it) and I should be able to access it _whenever I wanted_
2.  Getting the quote shouldn’t be intrusive. For example, I didn’t want to have a phone app which either sends me a notification or makes me unlock the phone, go to the app and then read the quote.
3.  It shouldn’t disrupt my workflow. Reading a quote should be a quick 2-second activity and not something I’d get into the weeds of.

With this in mind and with Raycast at my fingertips, I thought it would be a nice little project to play around over a weekend.


## Developing the extension {#developing-the-extension}

I found the [Stoic Quotes API](https://stoicquotesapi.com) which supports a bunch of different APIs, one of which is to get a random quote. This is exactly what I wanted. So, I built the [StoicQuotes extension](https://www.raycast.com/rrajath/stoicquotes) where every time the extension is invoked, I get a random quote. Raycast would display just the quote and the author. Nothing else. No fluff.

Raycast’s documentation to develop an extension is excellent and developing this extension took less than an hour. And that included setting up the environment, making calls to the API endpoint, beautifying how the quote is rendered and refactoring when needed. The extension uses Typescript and React and there are lot of components that Raycast provides and they do a lot of heavy lifting for us.

One really nice thing about Raycast is that all rendering is in markdown. There’s no need to deal with CSS. It’s just going to be markdown. This extension was just displaying a detail page and you don’t really need much to display a quote. Once you start the dev server while developing your extension, any changes you make is hot reloaded which makes development a breeze.

It was really easy to get all of that done and commit the code and send a pull request. All that was needed was getting the extension published.


## Publishing the extension {#publishing-the-extension}

Raycast development team is really helpful and very responsive when it comes to both reviewing PRs and providing support. Their [slack channel](https://www.raycast.com/community) is a great community to meet other Raycast enthusiasts, discuss bugs and suggestions, get help and even provide help, and also showcase your extension there. The whole community is very supportive and has a very positive atmosphere.

My PR was reviewed, approved and merged, and the extension was immediately live. I use it every single day.

I really appreciate the quality of documentation, the developer experience and support here. I wish more companies gave this kind of experience to developers. I want to make more extensions 🙂


## StoicQuotes Extension {#stoicquotes-extension}

Now, for the extension itself. Here are couple of screenshots. The first one shows the extension in the list of suggestions Raycast provides. The second one shows what it looks like when the extension is invoked.

![](/images/RaycastScreenshot.png)
You can see that the extension is part of the favorites. So, once I invoke Raycast using `Cmd+Space`, I can access the extension by hitting `Cmd+2` (since it’s second in the list). To make it even more streamlined, I hit `Cmd+Space` and while I’m still holding `Cmd`, I hit `2`.

![](/images/stoicquotes-1.png)
Here, you see the extension shows just the quote and the author. Hitting `Enter` will give you a new random quote. The extension also has the ability to copy the quote in both markdown and as plain text.


## Conclusion {#conclusion}

Developing this as an extension in Raycast seemed so perfect for me because it hit all 4 requirements I had (that I mentioned above) for getting a random stoic quote whenever I wanted without disrupting my workflow. With the extension installed, all I have to do is, invoke Raycast and invoke StoicQuotes (which can be marked as favorite for easy access), and I get a random quote. Hitting Esc will make the window go away and I’m back to whatever I was doing.

I highly recommend using Raycast and even creating an extension just to see how easy it is. It’s fun!
