---
categories:
- android
date: "2016-03-09T00:00:00Z"
aliases: [/android/the-dreaded-65k-method-limit-on-android]
tags:
- android
- dex
title: The Dreaded 65k Method Limit on Android
---
If you're an Android developer, it's likely that you have experienced this at least a few times during your development.

The first time I heard people talk about 65k method limit I wasn't aware of it so much. I was thinking, "How can a small Android app have 65,000 methods? That's ridiculous! I don't know what people are complaining about." Then when I read what the fuss was all about, I realized that 65k method limit includes not just all the methods in my app, but also everything my app consumes. Yes, that includes libraries; even if you don't use them. Surprisingly I never ran into this issue before though I used to throw in libraries for every little thing without caring about how much it's contributing to the 65k limit. Of course, in the beginning I was using smaller libraries with low method count. Not giants like Goole Play Services. But in a recent project I was working on, one fine day I got this error:

    Unable to execute dex: method ID not in [0, 0xffff]: 65536
    Conversion to Dalvik format failed: Unable to execute dex: method ID not in [0, 0xffff]: 65536

And I thought, "Huh, looks like I'm now in the same boat as many developers who've been talking about 65k method limit." As I always do with weird unknown errors, I googled this one and got a bunch of StackOverflow links which all said pretty much the same thing - enable multidex. I was about to do that, but I stopped and thought "Let me at least understand why this is happening. I'm surely not using many libraries. All I'm using is dagger, retrofit, timber, google play services and few others. Let me see the culprit that's making my method count reach 65k."

After some searching, I came across this awesome website [methodscount.com](http://www.methodscount.com/) by [Sebastian Gottardo](https://twitter.com/rotxed) that gives the method count for any library. Later I found the [plugin for Android Studio](http://www.methodscount.com/plugins) which made my day. After I installed the plugin, I saw the method counts of all the libraries I was using right in the build.gradle file and I found it. GooglePlayServices, with its massive 19k method count. I mean, come on. 19k? Really? I thought this is insane!! So did other developers, a long time ago. I was just late to the party. Few more minutes of googling and I found that Google Play Services 6.5 onwards the library is more modular - which means you can include only the stuff you want instead of the whole library. For my application I just needed wearable and location services and methods count for each is under 1.5k.

    compile 'com.google.android.gms:play-services:8.4.0'

So, the above line became:

    compile 'com.google.android.gms:play-services-wearable:8.4.0'
    compile 'com.google.android.gms:play-services-location:8.4.0'

giving me just what I need.

Another awesome tool to consider to get the method counts in a more detailed manner is [dex-method-counts](https://github.com/mihaip/dex-method-counts) by [Mihai Parparita](https://github.com/mihaip). This script gives the method counts in a tree format neatly segregating the counts for each package. There are few other tools out there to get method counts, but the key thing to remember is to think before using any 3rd party library. If it's helping you at the cost of bringing in thousands of methods into your DEX file, then is it really worth including it into your app? Can you use a different library that does the same job for you but with a considerably fewer method count?

PS: If you're interested to know why 65k, or rather why 65,536 specifically, you should listen to [Fragmented Podcast Episode 29](http://fragmentedpodcast.com/episodes/29/) where [Koushik Gopal](https://twitter.com/kaushikgopal) explains about this.

For more details on 65k limit, here are few links:

- [2016 Prediction: Battling the 65k limit](https://androidhub.intel.com/posts/blundell/Pushing_the_limit.html)  
- [[DEX] Sky's the limit? No, 65k methods is](https://medium.com/@rotxed/dex-skys-the-limit-no-65k-methods-is-28e6cb40cf71)
- [Deep dive into Android Multidex](http://www.fasteque.com/deep-dive-into-android-multidex)

