---
layout: page
title: SinK-DaT
description: Language model to help the young Korean generation in comprehending difficult corpora
img: /assets/img/SinkDat_overview.png
paper: /assets/pdf/sinK-Dat_report.pdf
slides: /assets/pdf/sinK-Dat_slides.pdf
importance: 3
hashtags: ['schoolwork', 'NLP']
---

<div class="row ml-1 mr-1 p-0">
    <div class="col-md-0">
        <div  data-toggle="tooltip" title="Prototype Link"></div>
        <a href="/assets/pdf/sinK-Dat_slides.pdf" target="_blank"><i class="fas fa-chalkboard"></i> Slides</a>
    </div>
    <div class="col-md-2">
        <div class="icon" data-toggle="tooltip" title="Code Repository"></div>
        <a href="/assets/pdf/sinK-Dat_report.pdf" target="_blank"><i class="fas fa-scroll"></i> Report</a>
    </div>
</div>


<div class="row justify-content-md-center">
    <div class="col-sm-9 justify-content-md-center">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/SinkDat_overview.png' | relative_url }}" alt="" title="Flow of how SinkDaT detects and translate Sin-Ko words"/>
    </div>
</div>
<div class="caption">
    The example flow of SiNK-DaT.
</div>

We introduce a new Korean language model called SinK-DaT, the Sino-Korean(Sin-Ko) Detector and Translator. SinK-DaT providesthe correct meaning and Chinese character
representations of the ”difficult” Sin-Ko wordbased on context from a given Korean text. Experiments on old Korean news articles show that the model can not only detect most Sin-Ko words, but also distinguish difficult ones among the detected Sin-Ko words and thus, supply the most suitable definitions to the
users. As a result, Sink-DaT helps the young Korean generation in comprehending difficult corpora.