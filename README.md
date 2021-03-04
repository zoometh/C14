# Time modeling

A dating is the positioning of an ***event*** or ***duration*** on a timeline correlatively to the positioning of another event or duration. A dating makes it possible to say *this happened before*, or *this happened after*, or *this happened during*. Important difficulties can come from the uncertainty of the dating (*date* ± *delta*) and the need of class interval for comparison (First Republic, Empire, etc.). To manage this uncertainty, statistics are required (randomization, confidence intervals, bayesian modeling, etc.)   

Archaeological relative datings (e.g. stratigraphical relations,
chrono-stylistic) or absolute datings (e.g. ^14^C) will permit to
respond to the question: 'When ?'. Along with geography, time is the
second dimension of historical processes. For example, agriculture and
breeding appear in South-Eastern Europe ca. 6800 BC, animal traction
complex appears and spread on continental Europe between 3600 and 2500
BC, etc. Statistics of gene-culture coevolution will be conducted taking
count of the chronological resolution of the datings (AMS dating on
carporemains *vs* old excavations stratigraphy). During the analysis,
time will be considered as a real dimension for the characterization of
social groups and social changes -- and not only as the support of
spatial and statistical analyses. Hypotheses (e.g. neutral changes,
population continuity), methods (e.g. fit to the Poisson law, Allen's
interval algebra) will be set up to measure the differences between
social groups or social changes. Within others R applications, `ts`,
will permit to manage time series. On maps, diffusion processes and
delays will be displayed with isochrone lines interpolating point
pattern (e.g. ^14^C of earliest proofs of breeding to study farming
diffusion). Temporal dynamism of gene-culture coevolution will be also
displayed with the `leaflet` R package. Time dimension enters also in
the agent-based modeling (ABM).
  
## Notions and operators

Classical operators of time modeling are those coming from the temporal logic (Linear Temporal Logic, Interval Temporal Logic, etc.). When the *starting* and *ending* events are known -- for example, 1870 to 1940 AD for the French Third Republic -- maybe one the most interesting model is the Allen's interval algebra where events are discrete 0-dimension features modeled with `POINTS`, and duration are continuous 1-dimension features modeled with `LINES` (more precisely: segments). 

<p align="center">
  <img alt="img-name" src="docs/imgs/events_duration.png" width="600">
  <br>
    <em>The French Revolution times</em>
</p>

The Harrix matrix is a well-known modeling for ordering sequences of events. Mostly employed for archaeological excavations, it is also used to understand [superimposition in rock-art](https://zoometh.github.io/iconr/articles/next.html)

## Absolute *or* relative dating ?

Whether a partition between absolute and relative dating can be done, different techniques form an in-between. **Age-depth models**, often used by paleo-environmentalists, and **seriation** are relative chronology fixed to an absolute reference timeline with a sample of known absolute chronological events. The **cross-dating** is the same but instead of absolute chronological events, the reference grid is a reference series (*master series*). Cross-dating can mix absolute and relative dating.

### Absolute dating
> <font size="3"> "*On a small geographical scale, within a short period of time, there are large differences in the ceramics*" (A. Hafner) </font>

Difficulties of absolute dating interpretation depends on the accuracy of the dating: the more precise the dating of an event is, the more important it is to understand its temporal significance.  
  
For example, a radiocarbon date coming from a Late Mesolithic/Early Neolithic cave can cover a span of ~ 100 years and *only* reflecting the replacement of a cultural entity (Last hunters-gatherers) by another (Early farmers). At the opposite, a tree ring post coming from an Bronze Age stilt house can be dated to the year -- sometimes to the season -- and reflect the sub-sub-phase of a larger event (the house building).

#### Radiocarbon and dendrochronological data integration and visualization
> [webpage](https://neolithic.shinyapps.io/AbsoluteDating/)

Radiocarbon (<sup>14</sup>C) and dendrochronological dates are one of the most sharable world-wide data. Their integration in online database, their management, and their modeling represent a classic playground in computing archaeology

#### **NeoNet** Neolithisation of the central and western Mediterranean
> [app](https://neolithic.shinyapps.io/NeoNet2/)
> [webpage](https://zoometh.github.io/C14/neonet)

We developed a RShiny app for interactive selection, mapping and calibration for the Mesolithic/Neolithic transition in Central and Western Mediterranean

<p align="center">
  <img alt="img-name" src="docs/imgs/panel_map.png" width="600">
  <br>
    <em>The NeoNet app</em>
</p>
  
The canvas of this RShiny app allows to use another database: the [Euroevol database](http://discovery.ucl.ac.uk/1469811/), and to create the [EUROEVOL_R app](https://neolithic.shinyapps.io/Euroevol_R/)  

### Relative dating

Relative dating is another name for chronological sequences. Relative dating reflects the fact that some events are known to be more ancient, or more recent, or contemporaneous to other events. In archaeology, the **stratigraphy** is the main method to infer relative chronology between cultural layers. Nicholas Steno has established its theoretical principles. The main ones are:

* **principle of original horizontality**: the oldest layers are underneath
* **original unit of deposits**: one layer = one geological event 

