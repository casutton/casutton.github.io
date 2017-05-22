---
layout: post
title: Converting Fahrenheit into Celsius... The Smart Way
date: '2012-08-03T16:03:00.000-07:00'
author: Charles Sutton
tags:
- expat
- popular
modified_time: '2012-08-12T12:52:55.477-07:00'
blogger_id: tag:blogger.com,1999:blog-4651184076703138844.post-4184764928363237521
blogger_orig_url: http://www.theexclusive.org/2012/08/converting-fahrenheit-into-celsius.html
---
*or, from small beginnings...*

One of the minor challenges of moving from the US to the UK is temperature. People in the UK always discuss the weather, and when they do, they use Celsius. My brain still works in Fahrenheit, so I need to convert typical daily outdoor temperatures in my head, and quickly enough that I can carry on a conversation.

You probably learned a formula in school for doing this. Completely useless. Forget all about it—but you already have, haven't you? You might remember, if you're clever, that the formula involves 9, 5, and 32 in some combination. But is it 9/5 or 5/9? Do you add 32, or do you subtract it? And do you do that before or after you multiply? And now people are wondering why you've been staring at them for two minutes when all they asked is how hot it was when you were in Seattle last week.

The problem is that the equation to convert C to F is too similar to the equation for the reverse, and both equations are too difficult to compute mentally. What we need is a simpler equation, that is easy to remember, and easy to work out quickly in your head.

So here's the trick. You memorise the following correspondences:

|       |     |       |
|-------|-----|-------|
| 0 °C  | =   | 32 °F |
| 10 °C | =   | 50 °F |
| 20 °C | =   | 68 °F |
| 30 °C | =   | 86 °F |

Then, to convert any temperature that is near these, approximate 1 °C = 2 °F. This will allow you to convert almost any naturally occurring outdoor temperature in the UK in either direction to within 1° accuracy.

Let's try it. As I write the current temperature in Edinburgh is 14 °C. This is 10 °C plus 4° extra. From memory convert the 10 °C to 50 °F. Then convert 4 °C extra to 8 °F extra and add it back on. This gives you 14°C = 58°F. This is not exact, but close enough that you know to wear a jumper. The exact formula is

      14 * 9 / 5 + 32 = 57 F

Good luck doing that in your head.

It tickles me that (maths alert) this is a piecewise linear approximation to a linear function. Mathematically, you would have to believe that a piecewise linear function would be more complicated, but mentally, it's not. Maybe there's a deep psychological principle here that scientists will figure out someday.

Until then, quite chilly today, isn't it?
