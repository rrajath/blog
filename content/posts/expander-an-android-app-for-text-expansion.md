+++
title = "Expander - an Android app for text expansion"
author = ["Rajath Ramakrishna"]
lastmod = 2026-01-30T09:23:54-08:00
draft = true
+++

I use text expansion a lot for the words or phrases that I frequently use. This works well on Gboard, the default keyboard on Android where you can configure text shortcuts. But it does not support dynamic data like current date, day or time. I need that for adding journal entries in Orgzly. There weren't good apps for this and the only one that was good enough was Typing Hero. This did the job, but had a limit on how many shortcuts one could create and anything beyond that needed a subscription. I'm all for paying money for good apps, but a monthly subscription for a text expansion app didn't make sense to me. Sure, the subscription got me a few more features and most of those features were not super useful to me. So, I decided to build my own.

With assistance from Claude Code, I built an Android app called Expander that does exactly what I need. Nothing more, nothing less. No ads, no tracking, lightweight. Modern Material 3 UI. Once the snippet is configured, typing it in any app and hitting space would replace the text that was typed with the full snippet. I also added the feature to export and import snippets into a JSON file. That really comes in handy while changing phones.


## Screenshots {#screenshots}

Here are some screenshots of the list page and the settings page.

&lt;Screenshot 1&gt;
&lt;Screenshot 2&gt;


## Demo {#demo}

And here's a demo on how it works.

&lt;Demo&gt;


## Conclusion {#conclusion}

I mostly used Claude Code for this and I was really impressed by how good it actually is. This would have taken me weeks to learn Kotlin, learn the Android app framework, the latest architecture and design guidelines and implement it. With Claude Code, the whole thing was done in a couple of hours. Even to the point where debug and release APKs get generated on every code push.
