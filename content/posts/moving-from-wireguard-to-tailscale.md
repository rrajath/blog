---
title: "Moving from Wireguard to Tailscale"
date: 2026-02-12T19:34:22-08:00
draft: true
tags: []
---

Ever since I heard about Tailscale and what it could do, I was always curious to try. I previously used Wireguard as my VPN to connect to my home network. But for some reason or another, in the rare instances where I wanted to access a device on my home network from outside, I found it hard. I finally got some time and inclination to try Tailscale and I was really impressed with both the setup and the usage. This post is about what I liked about it and something I found that conflicts with the setup on my phone. 

## Features I liked 
- One of the features of Tailscale that I really liked is that it's peer to peer mesh network (built on Wireguard). I can specifically access one device and not the whole network.
- It also has something called a MagicDNS where the underlying IP could change, but the MagicDNS hostname it generates and gives you remains the same. So, you can use that for as long as you want and it still connects.
- The connection is super easy. You just toggle it on your phone and you can immediately access any device on the tailnet, assuming both devices are online and allowed by access control lists.
- One of the security features is Tailscale SSH, where you can enable SSHing to your host only through Tailscale. This is really secure. Tailscale SSH does not require an SSH key exchange. The authentication happens via Wireguard and identity verification.
- The Taildrop feature makes it extremely convenient to transfer files back and forth between devices. I'm loving it.

## Caveat 
One caveat I found about using Tailscale on my Pixel is that I had set my DNS server to be dns.adguard.com. When I connected to Tailscale, I had to change this since it conflicted with Tailscale.