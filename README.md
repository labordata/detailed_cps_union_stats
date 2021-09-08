# Detailed Union Statistics Derived from CPS

This repository contains scripts to calculate a breakdown of union membership by US state and industry. 

The source data comes from [CPS IPUMS](https://cps.ipums.org). While the data is freely available from their website, their terms do not allow for redistribution
without written permission which is why the source data is not included in this repository.

We use five years of data, 2016-2020, to calculate the state by industry breakdown.

You can [download the data](https://raw.githubusercontent.com/labordata/detailed_cps_union_stats/main/state_industry.csv), or [explore it online](https://flatgithub.com/labordata/detailed_cps_union_stats?filename=state_industry.csv).

# Methodology

We follow the method that Hirch and MacPherson use on their [Unionstats.com](https://www.unionstats.com/) website. The `states.csv` recipe in the Makefile reproduces their published calculation
of the 2020 state breakdown.
