---
layout: page
title: Cocomix
description: An interactive webtoon-reader that leverages comments into the design of novel webtoon interactions.
img: /assets/img/ComicsA11y-gestures.jpeg
paper: https://minahuh.com/assets/pdf/CHI2022_Cocomix.pdf
slides: https://www.youtube.com/watch?v=O4sjNN9nrQI
importance: 0
hashtags: ['research','digital domics','accessibility','NLP']

---
<div class="row ml-1 mr-1 mb-3 p-0">
    <div class="col-md-0">
        <div class="icon" data-toggle="tooltip" title="Code Repository"></div>
        <a href="https://minahuh.com/assets/pdf/CHI2022_Cocomix.pdf" target="_blank"><i class="fas fa-scroll"></i> CHI 2022</a>
    </div>
    <div class="col-md-2">
        <div  data-toggle="tooltip" title="Prototype Link"></div>
        <a href="https://www.youtube.com/watch?v=O4sjNN9nrQI" target="_blank"><i class="fas fa-chalkboard"></i> Video</a>
    </div>
</div>
<div class="row justify-content-md-center">
    <div class="col-sm-9 justify-content-md-center">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/ComicsA11y-teaser.jpeg' | relative_url }}" alt="" />
    </div>
</div>
<div class="caption">
    Cocomix has two main components: (A) a comments-based adaptive description and (B) panel-anchored comments. With (A), BLV readers listen to more detailed description in key panels, which are frequently mentioned in comments. Abridged description is provided for remaining panels as default and readers can selectively access more details. With (B), BLV readers can easily access descriptive comments relevant to current panel.
</div>


Webtoon is a type of digital comics read online where readers can leave comments to share their thoughts on the story. While it has experienced a surge in popularity internationally, people with visual impairments cannot enjoy webtoon with the lack of an accessible format.
While traditional image description practices can be adopted, resulting descriptions cannot preserve webtoons' unique values such as control over the reading pace and social engagement through comments.
To improve the webtoon reading experience for BLV users, we propose Cocomix, an interactive webtoon-reader that leverages comments into the design of novel webtoon interactions. Since comments can identify story highlights and provide additional context, we designed a system that provides 1) comments-based adaptive description with selective access to details and 2) panel-anchored comments for easy access to relevant descriptive comments. Our evaluation (N=12) showed that Cocomix users could adapt the description for various needs and better utilize comments.