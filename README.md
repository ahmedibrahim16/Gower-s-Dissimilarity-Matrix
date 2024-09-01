The code in the attached R-script ("gowersdissimilarityfunction") computes the dissimilarity matrix, based on the method description by Gower (1971), complemented by description for ordinal features from Rousseeuw
(1990, pp. 30–31).  

$ s_{ij} = \frac{\sum_{l=1}^{p}w_{l}u_{ijl}s_{ijl}}{\sum_{l=1}^{p}w_{l}u_{ijl}}, $

where '$s_{ij}'$ denotes the similarity between the pair of objects '$i'$ and '$j'$ , '$w_l'$ is the weight of the feature '$l'$ and '$u_{ijl}'$ denotes the missing instance indicator.

The code in the attached function ("metricconditions")  tests the dissimilarity matrix for the metric conditions described in Nader et al. (2019).

References 

Gower, J. C. (1971). A general coefficient of similarity and some of its properties.Biometrics, 27, 857. Available from: https://doi.org/10.2307/2528823.39

Nader, R., Bretto, A., Mourad, B., & Abbas, H. (2019). On the positive semi-definite property of similarity matrices. Theoretical Computer Science, 755, 13–28. Available from: https://doi.org/10.1016/j.tcs.2018.06.052.

Rousseeuw, P. J. (1987). Silhouettes: A graphical aid to the interpretation and validation of cluster analysis. Journal of Computational and Applied Mathematics, 20, 53–65. Available from: https://doi.org/10.1016/0377-0427(87)90125-7
