+++
title = "Distributed Caching"
author = ["Rajath Ramakrishna"]
date = 2020-09-08T00:00:00-07:00
draft = false
+++

tags
: [Caching]({{< relref "caching" >}})

source
: [What is Distributed Caching](https://www.youtube.com/watch?v=U3RkDLtS7uY)


## Notes {#notes}

-   Cache is used to get the most frequently requested information faster instead of making a database call
-   What are caches mainly used for?
    -   save network calls
    -   avoid repeated computations
    -   reduce database load
-   Can't store too many things in cache, because that cache will grow and eat up your memory, and will defy the point of having one
-   How do we make sure which entries to keep and which ones to evict?
    This is handled by a Caching Policy:
    -   LRU
    -   Sliding Window
    -   etc.
-   What happens if there's a poor eviction policy?
    -   cache will make extra calls
    -   Thrashing - cache is too small and there'll be frequent cache misses
    -   slow updates. user updates something in the database, but it's not reflected in the cache
-   Where can the cache be place?
    -   close to the servers
        -   could be in-memory cache. But if one server goes down, the cache goes down with it.
        -   caches across servers may be inconsistent
        -   this is faster since the data is in memory
    -   close to the database
        -   this can be offloaded to a layer in between servers and database, using Redis
        -   even if a server goes down, the other servers continue to hit this cache layer (Redis) and get the data
        -   more accurate since it's always connected to the database
-   ways to ensure consistency
    -   write-through cache - you update the cache first and then write to the database. Drawback is it doesn't necessarily keep things consistent, if there are multiple servers. That is, if S1 does a write-through, what happens to S2? It'll still serve stale data.
    -   write-back cache - update the database first and then update the cache. The drawback here is it'll lead to thrashing because cache gets updated continuously
    -   hybrid - a combination of write-through and write-back where you get a bunch of calls hitting the cache and then you do a bulk update to the database
