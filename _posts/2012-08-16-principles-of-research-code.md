---
layout: post
title: Principles of Research Code
date: '2012-08-16T05:23:00.001-07:00'
author: Charles Sutton
tags:
- advice
modified_time: '2017-05-01T08:57:51.489-07:00'
blogger_id: tag:blogger.com,1999:blog-4651184076703138844.post-2459945294961582099
blogger_orig_url: http://www.theexclusive.org/2012/08/principles-of-research-code.html
---
Ali Eslami has just writen a [terrific page](http://arkitus.com/PRML/) on organizing your experimental code and output. I pretty much agree with everything he says. I've thought quite a bit about this and would like to add some background.
Programming for research is very different than programming for industry. There are several reasons for this, which I will call Principles of Research Code. These principles underly all of the advice in Ali's post and in this post. These principles are:

1.  **As a researcher, your product is not code. Your product is knowledge.** Most of your research code you will completely forget once your paper is done.
2.  **Unless you hit it big.** If your paper takes off, and lots of people read it, then people will start asking you for a copy of your code. You should give it to them, and best to be prepared for this in advance.
3.  **You need to be able to trust your results.** You want to do enough testing that you do not, e.g., find a bug in your baselines after you publish. A small amount of paranoia comes in handy.
4.  **You need a custom set of tools.** Do not be afraid to write infrastructure and scripts to help you run new experiments quickly. But don't go overboard with this.
5.  **Reproducability.** Ideally, your system should be set up so that five years from now, when someone asks you about Figure 3, you can immediately find the command line, experimental parameters, and code that you used to generate it.

Principle 1 implies that the primary thing that you need to optimise for in research code is your own time. You want to generate as much knowledge as possible as quickly as possible. Sometimes being able to write fast code gives you a competitive advantage in research, because you can run on larger problems. But don't spend time optimising unless you're in a situation like this.
Also, I have some more practical suggestions to augment what Ali has said. These are

1.  *Version control:* Ali doesn't mention this, probably because it is second nature to him, but you need to keep all of your experimental code under version control. To not do this is courting disaster. Good version control systems include SVN, git, or Mercurial, etc. I now use Mercurial, but it doesn't really matter what you use. Always commit all of your code before you run an experiment. This way you can reproduce your experimental results by checking out the version of your code form the time that you ran an experiment.
2.  *Random seeds:* Definitely take Ali's advice to take the random seed as a parameter to your methods. Usually what I do is pick a large number of random seeds, save them to disk, and use them over and over again. Otherwise debugging is a nightmare.
3.  *Parallel option sweeps:* It takes some effort to get set up on a cluster like ECDF, but if you invest this, you get some nice benefits like the ability to run a parameter sweep in parallel.
4.  *Directory trees:* It is good to have your working directory in a different part of the directory space from your code, because then you don't get annoying messages from your version control system asking you why you haven't committed your experimental results. So I end up with a directory structure like

        ~/hg/projects/loopy_crf/code/synth_experiment.py
            ~/results/loopy_crf/synth_experiment/dimensions_20_iterations_300

    Notice how I match the directory names to help me remember what script generated the results.

5.  *Figures list.* The day after I submit a paper, I add enough information to my notebook to meet Principle 5. That is, for every figure in the paper, I make a note of which output directory and which data file contains the results that made that figure. Then for those output directories, I make sure to have a note of which script and options generated those results.
6.  *Data preprocessing.* Lots of times we have some complicated steps to do data cleaning, feature extraction, etc. It's good to save these intermediate results to disk. It's also good to use a text format rather than binary, so that you can do a quick visual check for problems. One tip that I use to make sure I keep track of what data cleaning I do is to use Makefiles to run the data cleaning step. I have a different Makefile target for each intermediate result, which gives me instant documentation.

If you want to read even more about this, I gave a guest lecture last year on a similar topic ([slides](http://homepages.inf.ed.ac.uk/csutton/talks/principles-rse/), [podcast](http://podcast.is.ed.ac.uk:8080/Podcasts/inf_lectures/2011-09-29/Informatics_Research_Methodology__Charles_Sutton__27th_Septermber_2011-video.mp4)).
