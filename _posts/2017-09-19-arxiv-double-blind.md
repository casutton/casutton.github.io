---
layout: post
title: Does the world need one more blog about arxiv and double blind review?
author: Charles Sutton
tags:
- publication models
date: 2017-09-19 12:00:00
---

There has been a [lively](https://gridworld.wordpress.com/2015/07/20/arxiv-heaven-or-hell/) [debate](https://chairs-blog.acl2017.org/2017/03/02/arxiv-and-double-blind-reviewing-revisited/) [recently](https://chairs-blog.acl2017.org/2017/02/19/arxiv-and-the-future-of-double-blind-conference-reviewing/) about the review process for research paper submissions, and how to deal with the fact that double-blind review becomes more difficult when many papers are prepublished on sites like arxiv.org before submission.

I'm going to start from two assumptions:
*double blind reviewing is good* and *prepublication is good.* 
You can disagree with either assumption, or you could think that double-blind
is so much more important than than prepublication that it should
be preserved at all costs, or vice versa. People hold all of those views,
and it would take an even longer post to pull all that apart.

Instead, I'd to think about how to reconcile these two assumptions, because I do believe them both, and how to obtain an engineering trade-off that aims at most of the advantages of both, most of the time.

A lot of people have said that allowing papers to be prepublished anonymously would be a good compromise. An appealing idea, but
I worry that it may be
a bad one. Instead, I'll argue that a good compromise is this:  Accept that papers will be de-blinded, but design the double-blind review process to compensate.

Perhaps the underlying point is that the conflict isn't black and white. For double blind to work, it's not necessary for 100% of the submissions to be unblind*able*, i.e., have their author identities be undiscoverable online. I might even suggest that it's possible to have effective double blind when *all author identities* are available online. Just because a paper is unblind*able* does not mean that the reviewers are unblind*ed* --- perhaps they have not seen it, or perhaps they saw it in an email with 100 other papers and don't remember having seen it.

## What shouldn't we do?

There are some recommendations that I've seen that unfortunately I don't think will work.

### Anti-Recommendation 1: I know. Let's have an anonymous version of arxiv.

Lots of people have suggested allowing authors to prepublish papers
anonymously (incidentally, there are [amusing precendents for this](http://www.mhhe.com/math/calc/smithminton2e/cd/tools/timeline/bernoulli_1.html) in the history of mathematics). This could be implemented via an overlay of arxiv, or a new feature added to arxiv itself, that would allow authors to temporary hide their identity. Let's call this AnonArxiv. 

Submissions to AnonArxiv would be immediately available to all but without the author names. Then, once the paper is accepted, AnonArxiv would reveal the author names, while preserving the time stamp of the anonymous submission. The conference would then require that if submissions are prepublished, they must be prepublished anonymously; any other prepublished submissions will be rejected without review.

I used to think this was a cool idea. Now I don't. It neglects a 
fundamental principle that we are sadly all familiar with,
that *most papers are rejected*.

Let's say I post a great paper to AnonArxiv and submit it to ACL. Like most papers it is rejected. I'm convinced that the reviewers have made a mistake, and so I want to resubmit it to EMNLP. How do we handle this?

We could (1) require resubmissions to remain anonymous. After rejection, I must choose whether to unblind the submission on AnonArxiv, in which case it cannot be resubmitted to other conferences, or whether to keep the submission anonymous, in which case the paper could spend a year-plus as anonymous, until it is finally accepted. This seems an unreasonable choice to force onto authors.

Or we could (2) allow authors, after one rejection, to unblind their AnonArxiv submissions and resubmit to a future conference. This has the benefit that papers only spend a few months as public-but-anonymous, which is not so bad.
But I'm not sure it works. For one, this is difficult to enforce, because apart from the honor system, the information about whether a paper was previously submitted is confidential (keep in mind that the original submission might have been outside the NLP community). But more fundamentally, what would we do for first-time submissions that violate this rule, reject them without review? How would we justify doing that when there are many second-time submissions whose authors are already public?

This would also mean that if I submit a paper to a conference outside of NLP which allows prepublication and get rejected, I would not be able subsequently decide that an NLP conference would be a better fit, and resubmit there. It might be possible to implement a special dispensation in this case, though.

With some regret, I come to the conclusion that AnonArxiv won't work. That said, AnonArxiv variant (2) might work if a large enough percentage of submissions were first time submits. Then we'd have the majority of the papers on AnonArxiv, and hence unblindable, which might be good enough.

### Perhaps Anti-Recommendation: Require prepublication to be declared

ACL 2017 required all submissions to [declare if they had been prepublished](http://acl2017.org/calls/papers/#multiple-submission-policy). Reviewers were notified that a paper had been prepublished. Prepublished papers that were not declared as such were summarily rejected. Unfortunately I don't understand the rationale for how this stringent requirement was meant to help. Remember, the goal is not to prevent all papers from being unblind-*able*, it's to prevent too many papers from being unblind-*ed*.

This could be a good idea if the hope is to warn reviewers that they should be careful about searching the web for the paper's title during the review process. The problem with this idea though, is that it does not help if the authors very reasonable prepublish the paper just *after* submission. So really, all reviewers need to be careful, all the time, and the extra heads up maybe isn't too helpful.

If the idea was to simply to gain more information about how many papers are prepublished, then I totally agree with asking the question, but I do not see why penalties for non-compliance were necessary.

If the idea was to handle prepublished papers differently in the review process than non-prepublished ones, then I am not sure why this is necessary. Instead, I'll advocate below that we handle the review process of *unblinded* papers differently. 

So I would argue that it might make sense for conferences to request that authors declare prepublication, but that no penalties for noncompliance be used in future years.

### Recommendation-But-That's-Actually-An-Orthogonal-Issue: Let's use [OpenReview.Net](http://www.openreview.net)

I've also read the suggestion that the NLP community switch to running conferences on OpenReview. I love OpenReview, and I eagerly await the day when I can go onto a site like OpenReview and pull up any paper in computer science, from any venue, from any year past or present, and find a lively and informative discussion online. 

But OpenReview is a software platform, not a reviewing process. It's [specifically designed](https://openreview.net/pdf?id=xf0zSBd2iufMg) to allow conference chairs to configure what information about the reviews and authors should be made public and when. It's not designed to answer the policy questions about whether submissions should be anonymous and what happens after they are rejected.

## All right, wise guy, so ...?

One way to square the circle is to try adapting reviewing norms to adjust and compensate for the fact that it is more likely for papers to be unblinded.

Conferences are already doing these things, so I don't claim to have any new ideas. But I think it's useful to bring together the arguments for these ideas, rather than having programme chairs have to reconstruct these arguments for themselves every year.

### Recommendation 1: Clarify Norms for Reviewers

Even if the author information for all submissions are public online, then reviewers, area chairs, and programme chairs can take steps to reduce the chances that a submission is unblinded, and to minimize the consequences when one is.

**Reviewers** should avoid making Web searches that would be likely to reveal the authors of the paper. It can often happen that a well-meaning search for related work inadvertently turns up an unblinded copy of the paper. I am not saying that reviewers should never search for related work, but it carries risks --- it always has (ten years ago I had a reviewer of one of my papers deblinded by a tech report) --- and reviewers should try to avoid it. 

If the reviewer feels that a Web search is necessary, they should hold off until they have read the paper completely and formed an initial impression of it. This allows reviewers to apply the bias of cognitive dissonance to counteract the potential bias of unblinding. 

If reviewers learn the author identities, then they must let the relevant person --- who could variously go by the title "programme chair", "programme committee member", "meta-reviewer", "senior PC member", "area chair", etc; I'll use the term "area chair" (AC) --- know this right away. 

**Area chairs** should be prepared to apply their judgment to weigh the reviewers' comments differently when some reviewers are unblinded. Consider a paper like this: it has two negative reviews and one positive review, but the positive reviewer has been unblinded, the paper comes from a famous group so there is possibility of unconscious bias, and the AC believes that the negative comments have merit. Then the AC should be prepared to give less weight to the positive reviewer. In other examples, perhaps all three reviews are positive, or the authors are lesser-known, and so unlikely to engender positive bias. Then downweighting unblinded reviewers may not be necessary.

**Programme chairs** should carefully write their instructions to reviewers and area chairs to make these expectations clear. They should also be prepared to assist ACs with borderline cases where there is possibility of bias.

We don't know if these steps alone will reduce the percentage of unblind-*ed* submissions to an acceptable level. For example, if the percentage of unblinded reviews reaches, say, 80%, this recommendation becomes more like a band-aid that would be unlikely to preserve the benefits of double-blind review. Which brings us to the next point.

### Recommendation 2: Measure and Monitor

Much of the heat around this discussion may be because we are, as it were, debating in the blind. It is not difficult to gather more evidence than we have now:

* We should be able to measure and publicize the percentage of submissions and accepted papers which are prepublished.

* Although a bit more delicate, we should be able to estimate the percentage of submissions which are not first time submits.

* If we follow recommendation 1, we should also be able to monitor the percentage of reviews which are unblinded and the percentage of submissions which have had 1, 2, or 3 unblinded reviews.

* We should also attempt to record measures of diversity in the accepted papers in terms of authors and institutions. We should keep tracking those measures, monitor for decreases, and the presumed negative correlation with percentage of unblindedness.



