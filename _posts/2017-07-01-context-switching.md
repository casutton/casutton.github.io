---
layout: post
title: Context switching
author: Charles Sutton
tags:
- advice
- how to think
- stupid brain tricks
date: 2017-07-01 17:00:00
---

Of the many quirks shared by computer scientists, one that has somewhat entered the popular culture is the use of computing metaphors to speak about how we think. For example, "multitasking" is actually a technical term invented by computer scientists [in the 1960s](https://en.wikipedia.org/wiki/Computer_multitasking) to describe the way a computer pretends to execute many programs at once, even if in reality it can only do one thing at a time. You can see why the term would have been quickly co-opted to metaphorically describe humans who attempt the same trick.

For the benefit of the three or four readers of the blog who are not computer scientists, I'll digress here in order to comment that the situation on the computing side has gotten more complicated since the 60s, as almost all modern computers can perform many operations at once, but they still use multitasking so that they can pretend to do even more. That probably sounds like some people you know, too.

Professional computer scientists have many more metaphors at their command, though. We speak of "swapping in" and "swapping out" the details of a project from our short-term memories, referring to a technique that allows computers to pretend to have infinitely large memories. We also --- and now I come finally to the topic of the post --- talk about "context switching".

A context switch is a necessary result of multitasking. If a computer is pretending to run ten programs at once when it can in reality run only one, then it must switch very quickly back and forth between them, like a chef switching between stirring the sauce and browning the meat. Unlike the chef, on a computer the switching comes with a price. The price comes because computers have many different types of memory, some fast and close to the CPU, others larger and farther away.  Every time the computer switches from one program to another, it has to move data about the old program out of the small fast memory, and move the new data in. The work of switching back and forth is what we call context switching. It takes a bit of time.

So it is in your mind. When you switch between different tasks, it takes a while to remember the other context: what it was that you were supposed to be doing on the new task, why you thought it was a good idea, and so on. This is why you're not as efficient when you first start a new task as when you've been thinking about it for a while. This has led to the deluge of self-help articles, some of which I'm sure you've seen, about how mental multitasking is a bad idea. It takes time to switch contexts.

But as a professor <small>([in the US sense](http://www.theexclusive.org/2013/08/academic-ranks-in-us-and-uk.html))</small>, especially leading a research group, context switching cannot be avoided. The nature of the job requires us to make progress on many different types of tasks each day, from answering a student question about a problem set, to planning for the curriculum next year, to reading a paper related to one research project, to an impromptu meeting with a colleague about faculty hiring for next spring, to a scheduled meeting with a PhD student about a different research project. One of my mentors liked to joke, "Professors are stateless" (another computing metaphor). The reason that we seem stateless is that it takes some time for us to remember the previous context. Not only does it take time to context switch, but it is also a bit disorienting. A colleague once told me that the part of being a professor that they disliked the most was having to context switch many times a day.

People sometimes ask me how I handle context switching. I have a few strategies. One is a bit embarrassing, but I will tell you anyway. Perhaps I made this a long post to drive people away before I revealed the embarrassing one.

1. First is not to be afraid to ask questions. This is useful in one-to-one student meetings about a research project. You can say something like: "Sorry, what was the vorpal sort for again?" Of course, if you do this too much, you derail the meeting. But with practice I found that much of the time, simply asking the question silently in my head was enough. Once I had articulated the question clearly, I was able remember the answer, without bothering the student to repeat what we had already discussed. I'm sure this makes me look smarter, but more importantly it saves time.

1. I keep relevant information easy to search on my computer. This is why I am never without my laptop. I don't try to remember all that I need to know so much as remember how to find it in my email, in my Evernote, by a Web search that I know will bring up a particular page, or whatever. Then if I'm in a large meeting, for example, where I can't just stop and ask twenty people to remind me what they said in last week's meeting, I can search quietly and find the context I need.

1. When I know I'll need to make a big context switch, I'll take a break to clear my head. A ten-minute walk helps, or staring out a window, or something sweet. Coffee doesn't work here for me; it's great for energy, of course, but not for context switching.

1. If I write something down, I know down to my unconscious that it's OK to stop thinking about it, because now I can come back later. When I have meetings back to back, during the second meeting I might remember something I should have said in the first. If I quickly jot down a note, that helps me to stop thinking about the first meeting, and return to the task at hand. This works within meetings too. Sometimes I think of something that I need to say in a one-on-one meeting, but it's not as important as what we're talking about right now. I'll write that down too. I'll even say something as I'm doing this, so we both know there's something to come back to later.

1. OK, OK, I'll tell you the embarrassing one. I have some mental imagery that I use. I imagine my focus of attention as the beam of light coming from a huge lamp, like at the top of the lighthouse. When I need to switch focus quickly, like between back to back meetings, I imagine myself grasping the lamp between my hands --- it's several feet around, and heavy, so this takes a real effort --- and slowly rotating it to shine onto the new problem that I'm meant to be thinking about. Believe it or not, sometimes this works. I will never tell you when I am doing this, even if you ask.
