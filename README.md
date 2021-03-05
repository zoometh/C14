# Time modeling
> <font size="2.5"> "*Le temps, c'est ce qui passe quand rien ne se passe*" (J. Giono) </font>

Archaeological relative dating (e.g. stratigraphical relations, chrono-stylistic) or absolute dating (e.g. 14C) will permit to respond to the question: ***'When ?'***. Along with geography, time is the second dimension of historical processes. For example, agriculture and breeding appear in South-Eastern Europe ca. 6800 BC, animal traction complex appears and spread on continental Europe between 3600 and 2500 BC, etc. Statistics of gene-culture coevolution ([GC-coevol](https://zoometh.github.io/aDNA/)) will be conducted taking count of the chronological resolution of the datings (AMS dating on carporemains *vs* old excavations stratigraphy). During the analysis, time will be considered as a real dimension for the characterization of social groups and social changes -- and not only as the support of spatial and statistical analyses. Hypotheses (e.g. neutral changes, population continuity), methods (e.g. fit to the Poisson law, [Allen's interval algebra](#allen)) will be set up to measure the differences between social groups or social changes. Within others R applications, the [ts function](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/ts), will permit to manage time series. On maps, diffusion processes and delays will be displayed with isochrone lines interpolating point pattern (e.g. 14C of earliest proofs of breeding to study farming diffusion). Temporal dynamism of gene-culture coevolution will be also displayed with the R package [leaflet](https://rstudio.github.io/leaflet/). Time dimension enters also in the agent-based modeling (ABM).
  
## Concepts, methods and operators

A dating is the positioning of an ***event*** or ***duration*** on a timeline correlatively to the positioning of another event or duration. A dating makes it possible to say *this happened before*, or *this happened after*, or *this happened during*. Important difficulties can come from the uncertainty of the dating (*date* ± *delta*) and the need of class interval for comparison (Première République, Empire, etc., [[1]](#1)). To manage this uncertainty, statistics are required (randomization, confidence intervals, bayesian modeling, etc.). Classical operators of time modeling are those coming from the temporal logic (Linear Temporal Logic, Interval Temporal Logic, etc.). When the *starting* and *ending* events are known: for example, 1792 to 1804 AD for the period "Première République". 


### Allen's interval algebra {#allen}

Maybe one the most interesting model for time modeling is the Allen's interval algebra where:

* events are discrete 0-dim features modeled with **`POINTS`**

* duration are continuous 1-dim features modeled with **`LINES`** (more precisely: segments) or **`POLYGONS`** (for graphical reasons)

Allen's interval algebra is often associated with binary topological relationships (abbrev. *birel*). *Birel* allows to describe all the possible relationships between to geometric objects (here temporal 0-dim and 1-dim objects) following nine predicates: equal, disjoint, intersects, touches, etc. (see [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM))

<p align="center">
  <img alt="img-name" src="docs/imgs/events_duration.png" width="550">
  <br>
    <a id="1">[1]</a> The French Revolution times. Duration are represented as **`POLYGONS`** (rectangle) and events as **`POINTS`**. The event "14 juillet 1789"" is within the "Monarchie Absolue"" duration. "Sept. 1792" and "1804" are respectively the *starting* and *ending* events of the "Première République"
</p>

### Harrix matrix 

The Harris matrix is a well-known modeling for ordering sequences of events. Formally this chronological model is a directed acyclic graph (DAG) Mostly employed for archaeological excavations, it is also used to understand [superimposition in rock-art](https://zoometh.github.io/iconr/articles/next.html)

## Absolute *or* relative dating ?

Whether a partition between absolute and relative dating can be done, different techniques form an in-between. **Age-depth models**, often used by paleo-environmentalists, and **seriation** are relative chronology fixed to an absolute reference timeline with a sample of known absolute chronological events. The **cross-dating** is the same but instead of absolute chronological events, the reference grid is a reference series (*master series*). Cross-dating can mix absolute and relative dating.

### Absolute dating
> <font size="2.5"> "*On a small geographical scale, within a short period of time, there are large differences in the ceramics*" (A. Hafner) </font>

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

