---
layout: single
title: "RoboMix²: Mixed Event-frame-based On-device Learning on Mixed Spiking-artificial Neural Networks for Robotics"
permalink: /
author_profile: false
classes: wide
---

<div class="page-hero">
  <!--<img class="page-hero__project-logo" src="/assets/images/logos/robomix.png" alt="RoboMix²">-->
  <div class="page-hero__funding">
    <span class="page-hero__funded-by">Funded by</span>
    <a href="https://www.snf.ch" target="_blank">
      <img src="/assets/images/logos/snsf.png" alt="Swiss National Science Foundation">
    </a>
  </div>
</div>

## About RoboMix²

<div class="about-section" markdown="1">

**RoboMix²** builds on three advances. _Event cameras_ — modeled after biological visual pathways — offer low motion blur, high dynamic range, and lower power than frame-based cameras, which complement them with dense, easier-to-process features. _Spiking neural networks_ (SNNs), which mimic biological neurons, complement classical artificial neural networks (ANNs) with noise robustness and low-latency spike-driven computation — a natural fit for the asynchronous output of event cameras. _Tiny machine learning_ (TinyML) algorithms address domain shift, the degradation that occurs when offline-trained models encounter real-world conditions, through continual on-device adaptation.

Deploying this combination on miniaturized platforms remains an open problem. Current state-of-the-art systems either exploit only a subset of these modalities or depend on devices consuming several Watts, exceeding the power budgets of miniaturized robots. **RoboMix²** targets the first generation of ultra-low power (ULP) neuromorphic devices for mixed event-frame sensing and mixed SNN-ANN inference, with µs-level resolution interfaces for simultaneous event and frame streams, energy-efficient hardware accelerators, and support for self-supervised continual fine-tuning on-device.

The project validates its approach on visual odometry across two complementary platforms: a kg-scale unmanned ground vehicle (UGV), to demonstrate general applicability, and a sub-50 g nano-unmanned aerial vehicle (nano-UAV), representing the tightest constraints in power envelope, payload, and form factor. The resulting *Neuro Device* architecture is designed to generalize beyond robotics, with potential applications in autonomous driving and edge-based scene analysis.

</div>

---

## [Project Partners](/people/)

<div class="consortium">

  <div class="consortium-card">
    <div class="consortium-logo-wrap">
      <img src="/assets/images/logos/idsia.png" alt="IDSIA USI-SUPSI">
    </div>
    <div class="consortium-info">
      <div class="consortium-group"><a href="https://idsia-robotics.github.io/nanorobotics/" target="_blank">Nanorobotics Research Group</a></div>
      <div class="consortium-institution">IDSIA USI-SUPSI</div>
    </div>
  </div>

  <div class="consortium-card">
    <div class="consortium-logo-wrap">
      <img src="/assets/images/logos/eth.png" alt="ETH Zurich">
    </div>
    <div class="consortium-info">
      <div class="consortium-group"><a href="https://iis.ee.ethz.ch" target="_blank">Integrated Systems Laboratory (IIS)</a></div>
      <div class="consortium-institution">ETH Zurich</div>
    </div>
  </div>

  <div class="consortium-card">
    <div class="consortium-logo-wrap">
      <img src="/assets/images/logos/unibo.png" alt="University of Bologna" class="logo-large">
    </div>
    <div class="consortium-info">
      <div class="consortium-group"><a href="https://dei.unibo.it/en/research/research-groups/pulp" target="_blank">Parallel Ultra-Low Power (PULP) Group</a></div>
      <div class="consortium-institution">University of Bologna</div>
    </div>
  </div>

  <div class="consortium-card">
    <div class="consortium-logo-wrap">
      <img src="/assets/images/logos/unibo.png" alt="University of Bologna" class="logo-large">
    </div>
    <div class="consortium-info">
      <div class="consortium-group"><a href="https://dei.unibo.it/en/research/research-groups/programming-computing-and-cyber-physical-systems" target="_blank">Efficient Computing Systems (ECS) Group</a></div>
      <div class="consortium-institution">University of Bologna</div>
    </div>
  </div>

</div>

---

## Latest News

<div class="news-list">
{% assign news = site.data.news.news | sort: "date" | reverse | limit: 10 %}
{% for item in news %}
<div class="news-item">
  <span class="news-date">{{ item.date | date: "%B %d, %Y" }}</span>
  <span class="news-text">{{ item.text }}</span>
</div>
{% endfor %}
</div>

<a href="/news/" class="btn btn--primary">All news</a>

---

<div class="snsf-funding">
  <img src="/assets/images/logos/snsf.png" alt="Swiss National Science Foundation (SNSF)">
  <span>Funded by the <a href="https://www.snf.ch" target="_blank">Swiss National Science Foundation (SNSF)</a> under the Project Funding scheme · Grant Number <a href="https://data.snf.ch/grants/grant/10004854" target="_blank">10004854</a></span>
</div>
