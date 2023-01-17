---
layout: page
title: RubySlippers
description: A multi-modal interface that supports efficient content-based voice navigation of video tutorials through keyword-based queries.
img: /assets/img/RubySlippers.png
importance: 0
slides: https://www.youtube.com/watch?v=WxCB0GGVCDA
paper: https://kixlab.github.io/website-files/2021/chi2021-RubySlippers-paper.pdf
hashtags:  ['research','video', 'VUI', 'tutorial']
---

<div class="row ml-1 mr-1 mb-3 p-0">
    <div class="col-md-0">
        <div class="icon" data-toggle="tooltip" title="Code Repository"></div>
        <a href="https://kixlab.github.io/website-files/2021/chi2021-RubySlippers-paper.pdf" target="_blank"><i class="fas fa-scroll"></i> CHI 2021</a>
    </div>
    <div class="col-md-2">
        <div  data-toggle="tooltip" title="Prototype Link"></div>
        <a href="https://www.youtube.com/watch?v=WxCB0GGVCDA" target="_blank"><i class="fas fa-chalkboard"></i> Video</a>
    </div>
</div>

<div class="row justify-content-md-center" style="margin-top:30px; margin-bottom:30px">
    <div class="col-sm-9 justify-content-md-center">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/Ruby_Slippers.png' | relative_url }}" alt="" />
    </div>
</div>
<div class="caption">
    RubySlippers is a multi-modal interface supporting voice navigation with three main components: (A) Video player and timeline. (B) Search panel where keywords-based search results are shown. (C) Recommendation panel provides suggestions of search keywords and available navigation commands at each interaction interval.
</div>


Directly manipulating the timeline, such as scrubbing for thumbnails, is the standard way of controlling how-to videos. However, when how-to videos involve physical activities, people inconveniently alternate between controlling the video and performing the tasks. Adopting a voice user interface allows people to control the video with voice while performing the tasks with hands. However, naively translating timeline manipulation into voice user interfaces (VUI) results in temporal referencing (e.g. "rewind 20 seconds"), which requires a different mental model for navigation and thereby limiting users' ability to peek into the content. We present RubySlippers, a system that supports efficient content-based voice navigation through keyword-based queries. Our computational pipeline automatically detects referenceable elements in the video, and finds the video segmentation that minimizes the number of needed navigational commands. Our evaluation (N=12) shows that participants could perform three representative navigation tasks with fewer commands and less frustration using RubySlippers than the conventional voice-enabled video interface.
