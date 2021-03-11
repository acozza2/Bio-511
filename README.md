# Bio-511
Data files for bio 511


“This multi-year study quantifies the distribution and density of aquatic vertebrates throughout Lookout Creek stream network, including Mack, McRae and Upper Lookout Creeks. We are examining how predictable and consistent the densities and sizes of cutthroat trout and coastal giant salamanders are throughout the network and whether they fluctuate synchronously with vertebrates sizes and densities in Mack Creek that have been measured since 1987 (AS006). We are also examining biomass and condition of individuals across sites. Density and developmental stage of coastal tailed frog tadpoles are noted. We use electroshocking in discrete blocked reaches (depletion and mark-recapture methodologies) to collect individuals that are then weighed, measured and released. Site specific characteristics are measured at each sampling event, including wetted widths and water depths. Broader landscape metrics, including stream gradient and watershed area, were calculated for sites.”



Dataset Citation: 
Johnson, Sherri L. and Penaluna, Brooke E. (2020). Aquatic vertebrate populations in streams throughout the HJ Andrews Experimental Forest, 2013-present. Retrieved from https://search.dataone.org/view/https%3A%2F%2Fpasta.lternet.edu%2Fpackage%2Fmetadata%2Feml%2Fknb-lter-and%2F5484%2F3#https%3A%2F%2Fpasta.lternet.edu%2Fpackage%2Fdata%2Feml%2Fknb-lter-and%2F5484%2F3%2F11d62a66ccc22fb1bd7a527029eb5ece 


Plan for data:

Both biological measurements ( vertebrate sizes of cutthroat trout) and abiotic variables (wetted widths, water depths) were collected from 3 streams (Mack, McCrae, Upper Lookout) in the Lookout Creek watershed in HJ Andrews Forest. 

My questions that I would like to answer are:
•	Do the measurements of cutthroat vary synchronously in all creeks within the watershed? Predictor variables: creek site. response variable: size of cutthroat 
o	Hypothesis: dmeasurements correlate more to the abiotic factors than the fact that they are part of the same watershed. 
o	Statistical analyses: linear regression 
	Assumptions: linear relationship*(issue opening data in R to check), normality, little/no collinearity, homogeneity of residuals.


•	Do measurements of fish correlate to abiotic factors of the steams? Do separate species? Predictor variable: wetted width, water depth and stream gradient. Response variable: species and measurements.
o	Hypothesis: species richness and measurements increase with channel width and depth. 
o	Statistical analyses: multiple linear regression 
	Assumptions: linear relationship*(issue opening data in R to check), normality, no collinearity, homogeneity of residuals
