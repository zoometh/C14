---
title: | 
  | **NeoNet app and dataset** <br>
  <span style='font-size: 24px'>Mapping radiocarbon dates from Late Mesolithic/Early Neolithic transition in the Mediterranean</style>
author: "<span style='font-size: 15px'>Thomas Huet, Niccolo Mazzucco</style>"
# date: "11/12/2020"
header-includes:
  - \usepackage{float}
  - \floatplacement{figure}{H}  #make every figure with capti
# output: html_document
output: 
  bookdown::html_document2:
    number_sections: false
    keep_md: true
  # html_document:
    toc: true
    toc_float: 
      collapsed: false
      smooth_scroll: false
---

<style>
.html-widget {
    margin: auto;
}
</style>




<div class="figure" style="text-align: center">
<!--html_preserve--><div id="htmlwidget-0a9d45d6a1e657647834" style="width:60%;height:400px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-0a9d45d6a1e657647834">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,"OSM",{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addCircleMarkers","args":[[44.52,44.52,44.52,44.52,44.32,44.32,44.32,44.32,44.32,44.27,44.27,44.27,44.27,44.27,44.27,44.27,44.27,45.209,45.209,43.38,45.209,45.209,42.83,42.83,42.83,42.83,42.83,42.83,42.83,43.29,43.29,43.29,43.29,43.29,43.29,43.29,43.31,43.31,43.31,43.3,43.3,43.3,43.3,43.3,43.3,43.3,43.3,43.075,43.075,44.25,44.25,44.25,44.25,44.25,43.49,43.49,43.49,43.49,43.49,43.49,43.49,43.29,43.29,43.810304,43.810304,43.636852,44.32,44.32,44.32,44.32,43.636852,43.636852,43.636852,43.636852,48.88,43.76,43.49,43.49,43.49,43.49,42.48,44.01,44.092609,43.29,42.83,42.83,43.58,43.58,43.58,43.58,43.58,43.49,43.49,43.075,44.17,43.15,43.806724,43.3,43.3,43.3,44.4,43.9544,46.7333,44.13,43.47,46.7333,43.89,46.7333,43.806724,43.806724,42.626,43.806724,43.806724,45.209,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.58,43.58,43.58,43.58,43.58,43.58,45.209,49.22,43.29,43.29,43.29,43.29,43.29,43.29,44.74,45.62,44.27,44.27,43.38,43.38,43.29,43.29,43.38,43.38,43.29,41.4147751551063,43.59501,43.59501,43.59501,43.59501,43.59501,43.806724,43.806724,43.806724,43.59501,43.38,43.38,43.38,43.38,43.38,43.38,43.38,43.38,43.38,43.806724,43.806724,43.806724,43.38,43.38,43.38,43.38,43.59501,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.806724,43.59501,43.59501,43.59501,43.59501,44.092609,42.626,43.15,43.15,43.29,43.29,43.29,43.29,43.29,43.29,43.29,43.29,43.29,45.209,45.209,45.209,45.209,45.209,45.209,45.209,45.209,45.209,43.806724,45.209,43.29,43.29,43.29,43.29,43.29,43.29,43.29,43.29,42.44,43.31,43.31,44.092609,42.44,43.38,43.38,43.38,43.38,43.38,43.38,43.38,43.38,43.38,43.38,44.27,44.27,45.08,44.7,42.72,43.685,43.685,45.0461,43.58,45.6833,44.343,43.685,43.685,44.45,43.58,43.58,43.58,43.38,45.209,45.209,49.02,49.02,43.38,43.38,43.38,44.092609,44.092609,44.092609,44.092609,49.22,43.3,43.3,43.3,44.27,44.27,44.27,48.0999,45.209,42.72,45.209,43.806724,43.58,43.31,43.31,43.806724,43.806724,43.806724,43.25,42.4509735107422,44.87,43.38,43.38,43.38,43.58,43.58,43.58,43.15,45.354,45.19,45.354,49.22,43.31,45.209,43.31,45.7833,44.7,49.22,44.89,44.89,45.62,41.5539660389688,41.5539660389688,43.31,43.31,45.354,45.209,45.209,45.209,41.5539660389688,43.31,43.31,44.092609,42.78,42.78,42.78,42.78,42.78,42.78,43.5147,44.12,44.25,43.9,43.9,44.12,43.31,44.32,43.33,44.12,44.12,42.1045370204646,44.12,44.12,44.303,43.38,43.38,43.38,43.88,43.88,43.88,43.3,43.3,43.3,43.38,43.38,43.38,43.38,43.38,44.25,44.27,44.27,44.27,44.27,44.27,42.78,42.78,43.075,43.075,42.83,43.58,43.075,43.38,43.38,43.58,43.58,44.01,45.78],[4.82,4.82,4.82,4.82,4.47,4.47,4.47,4.47,4.47,4.69,4.69,4.69,4.42,4.42,4.42,4.42,4.42,5.633,5.633,5.16,5.633,5.633,3.01,3.01,3.01,3.01,3.01,3.01,3.01,2.4,2.4,2.4,2.4,2.4,2.4,2.4,3.35,3.35,3.35,2.34,2.34,2.34,2.34,2.34,2.34,2.34,2.34,2.475,2.475,4.37,4.37,4.37,4.37,4.37,2.89,2.89,2.89,2.89,2.89,2.89,2.89,2.4,2.4,4.336482,4.336482,5.63962,4.47,4.47,4.47,4.47,5.63962,5.63962,5.63962,5.63962,2.72,6.15,2.89,2.89,2.89,2.89,2.65,5.17,4.852488,2.4,3.01,3.01,6.215,6.215,6.215,6.215,6.215,2.89,2.89,2.475,3.17,1.18333,7.497243,2.34,2.34,2.34,4.22,3.1962,0.533333,5.96,6.52,0.533333,6.23,0.533333,7.497243,7.497243,2.949,7.497243,7.497243,5.633,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,6.215,6.215,6.215,6.215,6.215,6.215,5.633,3.51,2.4,2.4,2.4,2.4,2.4,2.4,1.83,6.01,4.42,4.42,5.16,5.16,2.4,2.4,5.16,5.16,2.4,9.16223487449845,7.00635,7.00635,7.00635,7.00635,7.00635,7.497243,7.497243,7.497243,7.00635,5.16,5.16,5.16,5.16,5.16,5.16,5.16,5.16,5.16,7.497243,7.497243,7.497243,5.16,5.16,5.16,5.16,7.00635,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.497243,7.00635,7.00635,7.00635,7.00635,4.852488,2.949,1.18333,1.18333,2.4,2.4,2.4,2.4,2.4,2.4,2.4,2.4,2.4,5.633,5.633,5.633,5.633,5.633,5.633,5.633,5.633,5.633,7.497243,5.633,2.4,2.4,2.4,2.4,2.4,2.4,2.4,2.4,2.34,3.33,3.35,4.852488,2.34,5.16,5.16,5.16,5.16,5.16,5.16,5.16,5.16,5.16,5.16,4.42,4.42,5.39,1.72,2.62,6.824,6.824,3.86606,6.215,5.35,4.753,6.824,6.824,4.42,6.215,6.215,6.215,5.16,5.633,5.633,4.27,4.27,5.16,5.16,5.16,4.852488,4.852488,4.852488,4.852488,3.51,2.34,2.34,2.34,4.42,4.42,4.42,3.2488,5.633,2.62,5.633,7.497243,3.36,3.33,3.33,7.497243,7.497243,7.497243,2.71,8.66902828216558,4.08,5.16,5.16,5.16,6.215,6.215,6.215,1.18333,5.886,5.49,5.886,3.51,3.35,5.633,3.35,3.08333,1.72,3.51,5.37,5.37,6.01,8.95112472043439,8.95112472043439,3.33,3.33,5.886,5.633,5.633,5.633,8.95112472043439,3.35,3.35,4.852488,2.08,2.08,2.08,2.08,2.08,2.08,3.27,3.18,4.37,3.73,3.73,3.18,3.33,4.47,2.6,3.18,3.18,9.40806311236511,3.18,3.18,4.568,5.16,5.16,5.16,5.66,5.66,5.66,2.34,2.34,2.34,5.16,5.16,5.16,5.16,5.16,4.37,4.42,4.42,4.42,4.42,4.42,2.08,2.08,2.475,2.475,3.01,3.36,2.475,5.16,5.16,6.215,6.215,5.17,4.8],3,["AA-32638","AA-32639","AA-32641","AA-32642","AA-53291","AA-53292","AA-53293","AA-53294","AA-53296","Beta-103862","Beta-103867","Beta-103868","Beta-253158","Beta-253161","Beta-253162","Beta-253163","Beta-253164","Beta-255118","Beta-255119","Beta-267434","Beta-282246","Beta-282247","Beta-398927","Beta-398928","Beta-398929","Beta-398930","Beta-398931","Beta-398932","Beta-398933","Beta-398934","Beta-398936","Beta-398937","Beta-398944","Beta-398945","Beta-398946","Beta-398947","Beta-398950","Beta-398951","Beta-398952","Beta-398970","Beta-398971","Beta-398972","Beta-398973","Beta-398974","Beta-398975","Beta-398976","Beta-398977","Beta-398981","Beta-398983","Beta-433199","Beta-433200","Beta-433201","Beta-433202","Beta-433203","Beta-433204","Beta-433205","Beta-433206","Beta-433207","Beta-433208","Beta-433209","Beta-433211","Beta-469930","Beta-469931","Erl-9579","Erl-9580","ETH-26417","ETH-27972","ETH-27973","ETH-27974","ETH-27975","ETH-27978","ETH-27979","ETH-27980","ETH-27981","Gd-5812","Gif-1111","Gif-1488","Gif-1489","Gif-1490","Gif-1491","Gif-1709","Gif-1796","Gif-1855","Gif-2401","Gif-2747","Gif-2749","Gif-2756","Gif-2757","Gif-2988","Gif-2989","Gif-2990","Gif-3077","Gif-3078","Gif-3575","Gif-446","Gif-5497","Gif-6471","Gif-7024","Gif-7026","Gif-7029","Gif-7352","Gif-7688","Gif-8436","Gif-8479","Gif-8656","Gif-8745","Gif-8930","Gif-9957","Gif-A101334","Gif-A101340","GrA-16273","GrA-23532","GrA-23533","GrA-25066","GrA-26893","GrA-26894","GrA-26895","GrA-26897","GrA-29401","GrA-29402","GrA-29403","GrA-29528","GrA-32061","GrA-32944","GrA-38329","GrA-38332","GrA-38334","GrA-38335","GrA-38336","GrA-38522","GrA-50236","GrA-50887","GrN-6702","GrN-6703","GrN-6704","GrN-6705","GrN-6706","GrN-6707","GSY-36A","KIA-7476","KN-1180","KN-1181","KN-1182","Kn-1208","KN-1265","KN-1266","KN-1399","KN-1449","KN-Sm","LgQ-617","LTL-12315A","LTL-12316A","LTL-12317A","LTL-13780A","LTL-13784A","LTL-13787A","LTL-13788A","LTL-14104A","LTL-15033A","LTL-15416A","LTL-15419A","LTL-15780A","LTL-15781A","LTL-15782A","LTL-15783A","LTL-15784A","LTL-15785A","LTL-15786A","LTL-15940A","LTL-15941A","LTL-15942A","LTL-15948A","LTL-15949A","LTL-15950A","LTL-15951A","LTL-18523A","LTL-8001A","LTL-8002A","LTL-8003A","LTL-8004A","LTL-8005A","LTL-8006A","LTL-8007A","LTL-8008A","LTL-8009A","LTL-8010A","LTL-8011A","LTL-8012A","LTL-8479A","LTL-8482A","LTL-8483A","LTL-8484A","Ly-100 (OxA)","Ly-10069","Ly-1089","Ly-1090 (OxA) ","Ly-11332","Ly-11333","Ly-11334","Ly-11335","Ly-11336","Ly-11337","Ly-11338","Ly-11339","Ly-11340","Ly-11551 (SacA-39068)","Ly-11552 (SacA-39069)","Ly-11553 (SacA-39070)","Ly-11554 (SacA-39071)","Ly-11555 (SacA-39072)","Ly-11556 (SacA-39073)","Ly-11557 (SacA-39059)","Ly-11726 (SacA-39760)","Ly-11727 (SacA-39761)","Ly-1713 (GrA-20195)","Ly-176","Ly-1992","Ly-1993","Ly-1994","Ly-2241","Ly-2242","Ly-2243","Ly-2244","Ly-2245","Ly-226","Ly-245","Ly-245 (OxA)","Ly-252 (OxA)","Ly-267","Ly-2824","Ly-2825","Ly-2826","Ly-2827","Ly-2828","Ly-2829","Ly-2830","Ly-2831","Ly-2832","Ly-2833","Ly-303","Ly-304","Ly-3043","Ly-33 (OxA-4551)","Ly-3302","Ly-3331","Ly-3332","Ly-3710","Ly-3748","Ly-386","Ly-3958","Ly-4156 (SacA-7413)","Ly-4157 (SacA-7414)","Ly-423","Ly-4373","Ly-4374","Ly-4376","Ly-438","Ly-4446","Ly-4447","Ly-4453","Ly-4454","Ly-446","Ly-447","Ly-448","Ly-4725","Ly-4726 (OxA)","Ly-4727 (OxA) ","Ly-4728 (OxA) ","Ly-4731","Ly-4770","Ly-4771","Ly-4773","Ly-494","Ly-495","Ly-496","Ly-4981","Ly-5099","Ly-5104","Ly-5185","Ly-5339","Ly-538","Ly-5688","Ly-5689","Ly-5690","Ly-5691","Ly-5692","Ly-5702","Ly-6085","Ly-616","Ly-622","Ly-623","Ly-624","Ly-6490","Ly-6491","Ly-6492","Ly-6814","Ly-7092","Ly-7094","Ly-7096 ","Ly-7097 ","Ly-7222","Ly-7352 (SacA-20970)","Ly-7607","Ly-7625","Ly-7791","Ly-7972","Ly-799","Ly-800","Ly-8054","Ly-8327","Ly-8328","Ly-8399","Ly-8400","Ly-8635 ","Ly-9369 (SacA-30347)","Ly-9370 (SacA-30348)","Ly-9371 (SacA-30349)","Ly-9519","Ly-9878","Ly-9879 (SacA-32046)","Ly-99 (OxA)","MC-1100","MC-1102","MC-1103","MC-1104","MC-1105","MC-1107","MC-1227","MC-1239","MC-1251","MC-1290","MC-1291","MC-1367","MC-1652","MC-2034","MC-2145","MC-2187","MC-2188","MC-2243","MC-2251","MC-2371","MC-2376","MC-2514","MC-2515","MC-2516","MC-263","MC-264","MC-265","MC-497","MC-498","MC-499","MC-531A","MC-531L","MC-531T","MC-532","MC-533","MC-563","MC-694","MC-695","MC-728","MC-729","MC-730","MC-780","MC-781","MC-785","MC-786","MC-788","MC-794","MC-935","MC-941","MC-942","_Sep-H3 mix","_Sep-H1 mix","_C11","OxA-19858"],null,{"interactive":true,"className":"","stroke":true,"color":"#03F","weight":1,"opacity":0.7,"fill":true,"fillColor":"#03F","fillOpacity":0.7},null,null,["Espeluche-Lalo","Espeluche-Lalo","Espeluche-Lalo","Espeluche-Lalo","Baume d'Oullins","Baume d'Oullins","Baume d'Oullins","Baume d'Oullins","Baume d'Oullins","Petites-Baties","Petites-Baties","Petites-Baties","Baume de Montclus","Baume de Montclus","Baume de Montclus","Baume de Montclus","Baume de Montclus","La Grande Rivoire","La Grande Rivoire","Font-des-Pigeons","La Grande Rivoire","La Grande Rivoire","Correge-Leucate","Correge-Leucate","Correge-Leucate","Correge-Leucate","Correge-Leucate","Correge-Leucate","Correge-Leucate","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Pont de Roque-Haute","Pont de Roque-Haute","Pont de Roque-Haute","Font-Juvenal","Font-Juvenal","Font-Juvenal","Font-Juvenal","Font-Juvenal","Font-Juvenal","Font-Juvenal","Font-Juvenal","Abri Jean Cros","Abri Jean Cros","Aigle (Grotte de l')","Aigle (Grotte de l')","Aigle (Grotte de l')","Aigle (Grotte de l')","Aigle (Grotte de l')","Camprafaud","Camprafaud","Camprafaud","Camprafaud","Camprafaud","Camprafaud","Camprafaud","Gazel","Gazel","Mas de Vignoles X","Mas de Vignoles X","Mourre de la Barque","Baume d'Oullins","Baume d'Oullins","Baume d'Oullins","Baume d'Oullins","Mourre de la Barque","Mourre de la Barque","Mourre de la Barque","Mourre de la Barque","La Pente de Croupeton","Abri du Capitaine","Camprafaud","Camprafaud","Camprafaud","Camprafaud","Montbolo","Grotte d'Unang","Le Baratin","Gazel","Correge-Leucate","Correge-Leucate","Fontbregoua","Fontbregoua","Fontbregoua","Fontbregoua","Fontbregoua","Camprafaud","Camprafaud","Abri Jean Cros","Combe Greze","Abri du Buholoup","Pendimoun","Font-Juvenal","Font-Juvenal","Font-Juvenal","La Tardive","Roc Troue","Les Usclades","Frigouras","Colle Rousse","Les Usclades","Ravin De Mouresse Boline","Les Rocs","Pendimoun","Pendimoun","Aspres del Paradis","Pendimoun","Pendimoun","La Grande Rivoire","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Fontbregoua","Fontbregoua","Fontbregoua","Fontbregoua","Fontbregoua","Fontbregoua","La Grande Rivoire","Le Parc du Chateau","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Roucadour","Le Creux des Elaphes","Baume de Montclus","Baume de Montclus","Font-des-Pigeons","Font-des-Pigeons","Gazel","Gazel","Font-des-Pigeons","Font-des-Pigeons","Gazel","Longone","Les Breguieres","Les Breguieres","Les Breguieres","Les Breguieres","Les Breguieres","Pendimoun","Pendimoun","Pendimoun","Les Breguieres","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Pendimoun","Pendimoun","Pendimoun","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Les Breguieres","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Pendimoun","Les Breguieres","Les Breguieres","Les Breguieres","Les Breguieres","Le Baratin","Aspres del Paradis","Abri du Buholoup","Abri du Buholoup","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","La Grande Rivoire","La Grande Rivoire","La Grande Rivoire","La Grande Rivoire","La Grande Rivoire","La Grande Rivoire","La Grande Rivoire","La Grande Rivoire","La Grande Rivoire","Pendimoun","La Grande Rivoire","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Gazel","Camp del Ginebre","Pont de Roque-Haute","Pont de Roque-Haute","Le Baratin","Camp del Ginebre","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Baume de Montclus","Baume de Montclus","Balme Rousse","Le Sanglier Grotte","Cauna de Belesta","Lombard","Lombard","Espaly Saint Marcel","Fontbregoua","Alfort","Saint Paul Trois Chateaux","Lombard","Lombard","Combe Obscure","Fontbregoua","Fontbregoua","Fontbregoua","Font-des-Pigeons","La Grande Rivoire","La Grande Rivoire","Les Grands Traquiers","Les Grands Traquiers","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Le Baratin","Le Baratin","Le Baratin","Le Baratin","Le Parc du Chateau","Font-Juvenal","Font-Juvenal","Font-Juvenal","Baume de Montclus","Baume de Montclus","Baume de Montclus","Le Pree des Forges","La Grande Rivoire","Cauna de Belesta","La Grande Rivoire","Pendimoun","Baume de Bourbon","Peiro Signado","Peiro Signado","Pendimoun","Pendimoun","Pendimoun","l'Horte","A Revellata","Longetraye","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Fontbregoua","Fontbregoua","Fontbregoua","Abri du Buholoup","Aulp du Seuil","Pas de Lechelle","Aulp du Seuil","Le Parc du Chateau","Pont de Roque-Haute","La Grande Rivoire","Pont de Roque-Haute","Pontcharaud","Le Sanglier Grotte","Le Parc du Chateau","Vassieux en Vercors","Vassieux en Vercors","Le Creux des Elaphes","Renaghju","Renaghju","Peiro Signado","Peiro Signado","Aulp du Seuil","La Grande Rivoire","La Grande Rivoire","La Grande Rivoire","Renaghju","Pont de Roque-Haute","Pont de Roque-Haute","Le Baratin","Dourgne","Dourgne","Dourgne","Dourgne","Dourgne","Dourgne","La Resclauze","La Poujade","Aigle (Grotte de l')","Grotte de l'Abbe Pialat","Grotte de l'Abbe Pialat","La Poujade","Peiro Signado","Baume d'Oullins","Balma de Labeurador","La Poujade","La Poujade","Casabianda","La Poujade","La Poujade","Saint Marcel d'Ardeche, Bidon","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Saint Mitre: Abri 3","Saint Mitre: Abri 3","Saint Mitre: Abri 3","Font-Juvenal","Font-Juvenal","Font-Juvenal","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Font-des-Pigeons","Aigle (Grotte de l')","Baume de Montclus","Baume de Montclus","Baume de Montclus","Baume de Montclus","Baume de Montclus","Dourgne","Dourgne","Abri Jean Cros","Abri Jean Cros","Correge-Leucate","Baume de Bourbon","Abri Jean Cros","Font-des-Pigeons","Font-des-Pigeons","Fontbregoua","Fontbregoua","Grotte d'Unang","Boul.Periph. Nord de Lyon"],null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[41.4147751551063,49.22],"lng":[0.533333,9.40806311236511]}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->
<p class="caption">(\#fig:preview)Preview of the current [NeoNet dataset](#bd) (work in progress) using RShiny and Leaflet in R</p>
</div>


<!-- The NeoNet app is part of the [Time modeling project](https://github.com/zoometh/C14#time-modeling) -->


# **Presentation**

The [**NeoNet app**](https://neolithic.shinyapps.io/NeoNet2/) aims to contribute to the study the pioneering front of the farming live-style (ie Neolithic) by focusing our study on the mobile border between the Last Hunter-Gathers economy and the Early Neolithic (ca. 7000 BC to 4500 BC) in the Central and Western Mediterranean. The interactive web app facilitates the selection of absolute dates (c14 dates) by providing selection tools for:

* spatial
  + geographical region of interest (ROI)
  + custom selection shape inside the ROI
  
* chronology 
  + date time span between a *tpq* and a *taq* in cal BC
  + main periods (Middle Mesolithic, Late Mesolithic, Early Neolithic, ...)
  
* date accuracy
  + some type of material life duration (short like, long life or others)
  + threshold of the maximum accepted standard deviation (SD)

 <!-- and more precisely the Mediterranean watersheds of this area -->

<!-- <p style="text-align: center;"> -->
<!-- ![](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/ws_roi.png){width=35%} -->
<!-- </p> -->

The app has been developed in the frame of the [NeoNet work group](https://redneonet.com). We will see [how it works](#app), what is the format [dataset](#bd) and what are our [objectives](#particip)

# **NeoNet app** {#app}

The app is a [RShiny](https://shiny.rstudio.com/) hosted on the [**shinyapps.io**](https://www.shinyapps.io/) server. The app is divided into five (5) panels:

1. [**map** panel](#panel.map): spatial filtering with selection menus on dates
2. [**calib** panel](#panel.calib): calibration of the selected dates
3. [**data** panel](#panel.data): the whole dataset
4. [**biblio** panel](#panel.biblio): bibliographical references
5. [**infos** panel](#panel.infos): credits and link to the webpage handbook of the app

## 1. **map** panel {#panel.map}
![](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/panel_map_idx.png){width=20%}
 
The panel **map** is a geographical window provided by the [Leaflet](https://rstudio.github.io/leaflet/) package. This panel is used for selection of radiocarbon dates [by location](#panel.map.select.loc), [by chronology](#panel.map.select.chr), [by quality of dates](#panel.map.select.quali). Once selected, dates can be [calibrated](#panel.map.calib)


<div class="figure" style="text-align: center">
<img src="index_files/figure-html/panel-map1-1.png" alt="The different menus of the map panel"  />
<p class="caption">(\#fig:panel-map1)The different menus of the map panel</p>
</div>
  
The current functions are:

* Fig. \@ref(fig:panel-map1), <span style="color:red"><u>red</u></span> box, top-left button ***group C14 on map***: allows to cluster dates by spatial proximities ([Marker Clusters](http://rstudio.github.io/leaflet/markers.html)) 

* Fig. \@ref(fig:panel-map1), <span style="color:pink"><u>pink</u></span> box, top-right layer button: allows to change the basemap. By default, the basemap is **OSM**, an [OpenStreetMap general basemap](https://leaflet-extras.github.io/leaflet-providers/preview/#filter=OpenStreetMap.Mapnik), but it can be switch to **Topo**, an [ESRI topographical basemap](https://leaflet-extras.github.io/leaflet-providers/preview/#filter=Esri.WorldImagery)

* Fig. \@ref(fig:panel-map1), <span style="color:darkgrey"><u>grey</u></span> box, bottom inline text: reactive count of selected dates and select sites 

* Fig. \@ref(fig:panel-map1), <span style="color:green"><u>green</u></span> box, bottom table: reactive datatable ([DT package](https://cran.r-project.org/web/packages/DT/index.html)) listing all the dates within the map extent (ROI) and the optional selection menus (tpq/taq, material life duration, maximum SD, periods, selection shapes)

### select by location {#panel.map.select.loc}

By default only the data within the window extent (ROI) will be selected. But selection shapes can be drawn inside this ROI to have a spatial intersection:
  
Fig. \@ref(fig:panel-map1), <span style="color:black"><u>black</u></span> box, top-left draw toolbar: selection shapes, ***polygons*** and ***rectanges***, can *freeze* the date selection inside a given ROI. They can be removed with the trash button. All the dates inside the ROI and selected with the others filters will be visible on the map, but only those inside the selections shapes will be calibrated  

<center>

![selection inside a shape, here a single polygon. Before shape selection: 190 sites and 895 dates. After shape selection: 13 sites and 68 dates](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/panel_map_shape.png){width=700px}

</center>

#### retrieve coordinates from the map {#panel.map.select.loc.get}

As said, the default basemap of the app is OSM. It offers a well documented basemap where archaeological sites are sometimes already located, like the Ligurian site of [Grotta della Pollera](https://www.openstreetmap.org/#map=19/44.20058/8.31466). Clicking on the map show the lat/long coordinates of the current point (under the tpq/tap slider). These coordinates can then be copied and used to modify the NeoNet dataset

<center>

![get coordinates by clicking on the map](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/panel_map_coords.png){width=250px}

</center>

### select by chronology {#panel.map.select.chr}

* Fig. \@ref(fig:panel-map1), <span style="color:brown"><u>brown</u></span> box, top-right checkboxes: allow to select dating by periods. The <span style="color:orange"><u>orange</u></span> box, bottom-left legend, is reactive and update depending on selected periods

* Fig. \@ref(fig:panel-map1), <span style="color:blue"><u>blue</u></span> box, bottom-left slider: allows to subset a range of accepted dates between a *tpq* and a *taq* (in cal BC)

### select by dates quality {#panel.map.select.quali}

* Fig. \@ref(fig:panel-map1), <span style="color:purple">purple</span> box, bottom-right checkboxes and slider: a group of menus for selection on the material life duration and max accepted SD:
  + relatively to the duration of their material (short to long-life material)
  + below a maximum accepted threshold for the standard deviations (SD) for the dates

### calibrate one or various dates {#panel.map.calib}

The dates displayed in the [table of the **map panel**](#panel.map) will be calibrate when one of them has been clicked.

<center>

![click on a date to calibrate a selected group of dates](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/panel_map_select.png){width=250px}

</center>


## 2. **calib** panel {#panel.calib}
![](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/panel_calib_idx.png){width=20%}


The panel **calib** is used for analysis. Calibration of selected dates are done on-the-fly with the R packages [Bchron](https://cran.r-project.org/web/packages/Bchron/index.html) and [rcarbon](https://cran.r-project.org/web/packages/rcarbon/index.html). If the dates are numerous (e.g., > 100) the computing time could take times.

<center>

![calibrate dates](img/calib_dates.gif)

</center>

This date which have been clicked on the [**map panel**](#panel.map.calib) will be shown **bolded** on the output figure

### c14 group by *filter* {#panel.calib.group}

The only selection which can be done is on the top-center radio button  (Fig. \@ref(fig:panel-calib), <span style="color:red"><u>red</u></span> box). The **c14 group by** filter allows to plot dates and to sum their probability densities depending on different levels of grouping:

* **by date**: each date is plot separately (by default)

* **by PhaseCode**: dates from the same site, having the same archaeological unit (layer, structure, etc.), are summed. See the [PhaseCode](#mf.phasecode) field.

* **by site and period**: dates from the same site, having the same period are summed

* **by period**: dates having the same period are summed  

* **all C14**: all dates are summed 

<div class="figure" style="text-align: center">
<img src="index_files/figure-html/panel-calib-1.png" alt="The different menus of the calib panel"  />
<p class="caption">(\#fig:panel-calib)The different menus of the calib panel</p>
</div>

### plot area *output*

The plot area (Fig. \@ref(fig:panel-calib), <span style="color:orange"><u>orange</u></span> box) shows dynamically the SPD of the cabibrated dates seriated on their weighted means. The top-right  button **Download** (Fig. \@ref(fig:panel-calib), <span style="color:green"><u>green</u></span> box) allows to export the last plot in a PNG image

<p style="text-align: center;">
![](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/neonet_calib_example.png){width=80%}
</p>

## 3. **data** panel {#panel.data}
![](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/panel_data_idx.png){width=20%}

The complete dataset from the GitHub  [c14data.tsv](https://github.com/zoometh/C14/blob/main/neonet/c14data.tsv) file (a dataframe with tab-separated values). The first rows are:

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:right;"> Latitude </th>
   <th style="text-align:right;"> Longitude </th>
   <th style="text-align:left;"> SiteName </th>
   <th style="text-align:left;"> Period </th>
   <th style="text-align:left;"> PhaseCode </th>
   <th style="text-align:left;"> LabCode </th>
   <th style="text-align:right;"> C14BP </th>
   <th style="text-align:right;"> C14SD </th>
   <th style="text-align:left;"> Material </th>
   <th style="text-align:left;"> bib </th>
   <th style="text-align:left;"> bib_url </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> France </td>
   <td style="text-align:right;"> 44.52 </td>
   <td style="text-align:right;"> 4.82 </td>
   <td style="text-align:left;"> Espeluche-Lalo </td>
   <td style="text-align:left;"> EN </td>
   <td style="text-align:left;"> St. 76 </td>
   <td style="text-align:left;"> AA-32638 </td>
   <td style="text-align:right;"> 6560 </td>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:left;"> WC </td>
   <td style="text-align:left;"> Beeching et al. 2000 </td>
   <td style="text-align:left;"> Beeching00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> France </td>
   <td style="text-align:right;"> 44.52 </td>
   <td style="text-align:right;"> 4.82 </td>
   <td style="text-align:left;"> Espeluche-Lalo </td>
   <td style="text-align:left;"> EN </td>
   <td style="text-align:left;"> St. 73 </td>
   <td style="text-align:left;"> AA-32639 </td>
   <td style="text-align:right;"> 6520 </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:left;"> WC </td>
   <td style="text-align:left;"> Beeching et al. 2000 </td>
   <td style="text-align:left;"> Beeching00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> France </td>
   <td style="text-align:right;"> 44.52 </td>
   <td style="text-align:right;"> 4.82 </td>
   <td style="text-align:left;"> Espeluche-Lalo </td>
   <td style="text-align:left;"> EN </td>
   <td style="text-align:left;"> St. 120 </td>
   <td style="text-align:left;"> AA-32641 </td>
   <td style="text-align:right;"> 6585 </td>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:left;"> WC </td>
   <td style="text-align:left;"> Beeching et al. 2000 </td>
   <td style="text-align:left;"> Beeching00 </td>
  </tr>
</tbody>
</table>

At first, these data are recorded in a Excel spreadsheet (c14 spreadsheet) in order to facilitate their editing (filter, sorting, fill). Then a R function read this spreadsheet, calculate the *tpq* and *taq* (in BC) of each unCal BP (with [Bchron](https://cran.r-project.org/web/packages/Bchron/index.html)),  and convert it into a .tsv file. As data came from various publications, an homogenization the different values (material, cultures, bibliographical references, etc.) must be done. Currently, special characters (`é`, `à`, etc.) are not accepted. The dataset **mandatory fields** are:

* **SiteName**: the site name
* [coordinates (two fields)](#mf.coords)
  + **Longitude**: in decimal degrees (ex: `1.045`)
  + **Latitude**: in decimal degrees (ex: `43.921`)
* **Period**: a value from the [**period.abrev**](#bd.period) spreadsheet
* [**PhaseCode**](#mf.phasecode): a code for the dating stratigaphical unit and/or structure
* **C14Age**: a numerical radiocarbon dating in BP
* **C14SD**: the standard deviation (SD) of the radiocarbon dating
* [**LabCode**](#mf.labcode): the unique identifier of the radiocarbon dating
* **Material**: a value from the [**material.life**](#bd.material) spreadsheet 
* **MaterialSpecies**: a specification of the field **Material**
* **tpq**: the *terminus post quem* of the radiocarbon dating in cal BC
* **taq**: the *terminus ante quem* of the radiocarbon dating in cal BC
* [bibliographical references (two fields)](#mf.bib_all)
  + [**bib**](#mf.bib): a short plain text bibliographical reference
  + [**bib_url**](#mf.bib_url): a DOI or a BibTeX key bibliographical reference

The **recommended** fields are:

* **Culture**: a specification of the field **Period**

The others fields (if there's any) only concern the **[EUROEVOL_R app](https://zoometh.github.io/C14)** 

#### mandatory fields

Here we explain more precisely some of the mandatory fields

##### **Longitude** and **Latitude** {#mf.coords}

In in decimal degrees (ex: `1.045, 43.921`). Since the modeling is supra-regional, the app does not need to record dates with high accuracy geographical coordinates. At the minimum, this accuracy can be a location inside the departmental/county boundaries ([how to retrieve better coordinates from the map](#panel.map.select.loc.get))

##### **PhaseCode** {#mf.phasecode}

The PhaseCode field provide a more precise archaeological context than the site name. It is useful for [**layer/structure C14 grouping**](#panel.calib.group). Most of the time, it correspond to an archaeological layer or structure

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> PhaseCode </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> C5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C7-8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> foyer 7 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> niv. II </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ... </td>
  </tr>
</tbody>
</table>

Values of this field need to be homogeneized (for example: `C.5` or `layer 5` -> `C5`) -- at first for the same sites, in order to group them -- then for the whole dataset. The `n/a` value (i.e., not available) is reserved to dates without intra-site contextual information

##### **LabCode** {#mf.labcode}

LabCode (i.e., laboratory code) should be unique. Their conventional syntax is '*AbrevLab*-*number*', respecting the case letters (upper case and lower case). For example:

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> LabCode </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Beta-103487 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CSIC-1133 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ETH-15984 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Gif-1855 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GrN-6706 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> KIA-21356 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LTL-13440A </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ly-11338 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MC-2145 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> OxA-9217 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Poz-18393 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ... </td>
  </tr>
</tbody>
</table>

See also the [list of laboratories](http://radiocarbon.webhost.uits.arizona.edu/node/11). Exceptionally, if a date has no LabCode -- e.g., the 'Sep-H3 mix' from Fontbregoua, 6082 +/- 35 BP -- the convention is to use the PhaseCode (e.g., 'Sep-H3 mix') with an underscore as a prefix (e.g., '_Sep-H3 mix') to get an unique key.

##### **bib** and **bib_url** {#mf.bib_all}

Every radiocarbon date should be referenced with a bibliographical reference with a plain text in the [**bib**](#mf.bib) field and and a DOI or a BibTex key in the [**bib_url**](#mf.bib_url) field. We favor the earliest mention of the radiocarbon date. 

###### **bib** {#mf.bib}

The plain text that will be plot for each radiocarbon date under the bibliographical reference section. Basically the name of the author(s) and the publication year, for example `Guilaine et al. 1993`, `Binder 2018` or `Manen et Sabatier 2013`. The values of this field can be the same for two different publications (e.g. `Delibrias et al. 1982` refers to two different publications the same year) 

###### **bib_url** {#mf.bib_url}

Either a DOI (starting with "`10`") or a unique BibTeX key. We favor the DOI as a unique bibliographical reference. The values of this field should be unique for a single publication (e.g. the BibTeX keys `Delibrias82` and `Delibrias82a`). For example: 

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> tpq </th>
   <th style="text-align:left;"> taq </th>
   <th style="text-align:left;"> select </th>
   <th style="text-align:left;"> RedNeo </th>
   <th style="text-align:left;"> bib </th>
   <th style="text-align:left;"> bib_url </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> -6086 </td>
   <td style="text-align:left;"> -5923 </td>
   <td style="text-align:left;"> VRAI </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Binder et al. 2018 </td>
   <td style="text-align:left;"> <b>https://doi.org/10.4312/dp.44.4</b> </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
  </tr>
</tbody>
</table>

When the DOI is lacking, the bibliographical reference should be include into the BibTex document [references.bib](https://raw.githubusercontent.com/zoometh/C14/master/neonet/references_france.bib) with the name of the first author and the two last digits of the year:


```r
@book{Guilaine93,
  title={Dourgne: derniers chasseurs-collecteurs et premiers {\'e}leveurs de la Haute-Vall{\'e}e de l'Aude},
  author={Guilaine, Jean and Barbaza, Michel},
  year={1993},
  publisher={Centre d'anthropologie des soci{\'e}t{\'e}s rurales; Arch{\'e}ologie en Terre d'Aude}
}
```

The key of this reference is added to the **bib_url** field. For example, the key value **Guilaine93** from the c14 spreadsheet will match this complete reference 

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> tpq </th>
   <th style="text-align:left;"> taq </th>
   <th style="text-align:left;"> select </th>
   <th style="text-align:left;"> RedNeo </th>
   <th style="text-align:left;"> bib </th>
   <th style="text-align:left;"> bib_url </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> -3330 </td>
   <td style="text-align:left;"> -2492 </td>
   <td style="text-align:left;"> FAUX </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Guilaine et al. 1993 </td>
   <td style="text-align:left;"> <b>Guilaine93</b> </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
   <td style="text-align:left;"> ... </td>
  </tr>
</tbody>
</table>

### correspondance tables

The NeoNet app makes joins to two tables in order to retrieve information and to provide a handy user interface

#### material.life {#bd.material}

Material life duration are read from the GitHub  [c14_material_life.tsv](https://github.com/zoometh/C14/blob/main/neonet/c14_material_life.tsv) file. The two fields show the material type (column 1) and the material life duration (column 2), for example: 

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> material.type </th>
   <th style="text-align:left;"> life.duration </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Drusch - trilladura </td>
   <td style="text-align:left;"> long.life </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Agla </td>
   <td style="text-align:left;"> long.life </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Angiosperma </td>
   <td style="text-align:left;"> long.life </td>
  </tr>
  <tr>
   <td style="text-align:left;"> animal bone </td>
   <td style="text-align:left;"> short.life </td>
  </tr>
  <tr>
   <td style="text-align:left;"> animal hair </td>
   <td style="text-align:left;"> short.life </td>
  </tr>
  <tr>
   <td style="text-align:left;"> antler </td>
   <td style="text-align:left;"> short.life </td>
  </tr>
</tbody>
</table>

This thesaurus is used both by the NeoNet app and the EUROEVOL_R app. Specifically, the NeoNet uses these values:

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> material.type </th>
   <th style="text-align:left;"> description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> CE </td>
   <td style="text-align:left;"> Cerealia </td>
  </tr>
  <tr>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> Fauna </td>
  </tr>
  <tr>
   <td style="text-align:left;"> H </td>
   <td style="text-align:left;"> Human </td>
  </tr>
  <tr>
   <td style="text-align:left;"> OR </td>
   <td style="text-align:left;"> Organic </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SE </td>
   <td style="text-align:left;"> Seed </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SH </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> WC </td>
   <td style="text-align:left;"> Wood charchoal </td>
  </tr>
</tbody>
</table>


#### period.abrev {#bd.period}

Periods and periods abbreviations are read from the GitHub  [c14_period_abrev.tsv](https://raw.githubusercontent.com/zoometh/C14/master/neonet/c14_period_abrev.tsv) file. The two fields show the period abbreviation (column 1) and the period full label (column 2), for example:

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> period.brev </th>
   <th style="text-align:left;"> period </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> EM </td>
   <td style="text-align:left;"> Early Mesolithic </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MM </td>
   <td style="text-align:left;"> Middle Mesolithic </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LM </td>
   <td style="text-align:left;"> Late Mesolithic </td>
  </tr>
  <tr>
   <td style="text-align:left;"> UM </td>
   <td style="text-align:left;"> Undefined Mesolithic </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LMEN </td>
   <td style="text-align:left;"> Late Mesolithic/Early Neolithic </td>
  </tr>
  <tr>
   <td style="text-align:left;"> EN </td>
   <td style="text-align:left;"> Early Neolithic </td>
  </tr>
</tbody>
</table>


In the NeoNet app, this dataset is rendered with the ([DT package](https://cran.r-project.org/web/packages/DT/index.html)) allowing sorting and filtering tools

## 4. **biblio** panel {#panel.biblio}
![](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/panel_biblio_idx.png){width=20%}

Bibliographical references from the GitHub [c14refs.tsv](https://github.com/zoometh/C14/blob/main/neonet/c14refs.tsv) file. If only exist a BibTeX key, and no DOI, this file results of the join between the *bib_url* field of the C14 spreadsheet and the *references.bib*. If the DOI exists, the full bibliographical reference is  file The first rows are:

<table class="table" style="font-size: 12px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> short.ref </th>
   <th style="text-align:left;"> key.or.doi </th>
   <th style="text-align:left;"> long.ref </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Beeching et al. 2000 </td>
   <td style="text-align:left;"> Beeching00 </td>
   <td style="text-align:left;"> Beeching A, Brochier J, Cordier F (2000). “La transition Mésolithique-Néolithique entre la plaine du Rhône moyen et ses bordures préalpines.” _Les Paléoalpins e Hommage à Pierre Bintz, Géologie Alpine e Mémoire Hs_, *31*, 201-210. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Garcia-Puchol et Salazar-Garcia 2017 </td>
   <td style="text-align:left;"> 10.1007/978-3-319-52939-4 </td>
   <td style="text-align:left;"> García-Puchol, O., &amp; Salazar-García, D. C. (Eds.). (2017). Times of Neolithic Transition along the Western Mediterranean. Fundamental Issues in Archaeology. doi:10.1007/978-3-319-52939-4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Binder et al. 2002 </td>
   <td style="text-align:left;"> Binder02 </td>
   <td style="text-align:left;"> Binder D, Jallot L, Thiebault S, others (2002). “Les occupations néolithiques des Petites Bâties (Lamotte-du-Rhône, Vaucluse).” _Archéologie du TGV Méditerranée: fiches de synthèse_, *1*, 103-122. </td>
  </tr>
</tbody>
</table>

In the NeoNet app, these bibliographical references are rendered in APA citation format (field `long.ref`) 

## 5. **infos** panel {#panel.infos}
![](C:/Users/supernova/Dropbox/My PC (supernova-pc)/Documents/C14/docs/imgs/panel_infos_idx.png){width=20%}

Infos, credits and link to this webpage (https://zoometh.github.io/C14/neonet)

# **Collaborative work** and contacts {#particip}

To facilitate contributions and a [FAIR](https://www.go-fair.org/fair-principles/) use of the app and dataset, we plan to:

1. publish the **dataset** in an Open Data repository to get a DOI (ex: [Zenodo](https://zenodo.org/))
2. reference the **dataset**  in a data paper with the DOI (ex: [JOAD](https://openarchaeologydata.metajnl.com/))
  + create a connector with the [c14bazAAR getter function](https://github.com/ropensci/c14bazAAR#contributing)
3. host the **app** on an institutional web server
4. publish the **app** source code in an Open digital humanities paper (ex: [JOSS](https://joss.theoj.org/))

To be informed on the project development or to contribute, please contact:

* [NeoNet work group](https://redneonet.com)
  + Miriam Cubas <mcubas.morera@gmail.com>
  + Juan Francisco Gibaja <jfgibaja@imf.csic.es>
  + Millán Mozota Holgueras <millanm@imf.csic.es>
  + [..complete list..](https://redneonet.com/colaboradores/)
  
* data integration
  + Niccolò Mazzucco <nicco.mazzucco@gmail.com>  
  
* IT integration
  + Thomas Huet <thomashuet7@gmail.com> 
