# Behavioral Analysis: PAS Ratings & Performance

Analysis of the relationship between Perceptual Awareness Scale (PAS) ratings and behavioural performance.

## Overview

- **Participants:** 8 (6 female, mean age 25.9 years)
- **Trials:** 3,200 total
- **Measures:** Identification accuracy, response time
- **Analysis:** Mixed-effects models (binomial GLMM for accuracy, LMM for RT)

## Key Results

Both accuracy and RT varied significantly with PAS ratings (p < .001):

![Behavioural Results](out/fig_accuracy_rt_combined.png)

| PAS Level | Accuracy | RT (ms) |
|-----------|----------|---------|
| NE (No Experience) | 54.1% | 1629 |
| WG (Weak Glimpse) | 78.4% | 1244 |
| CE (Clear Experience) | 93.3% | 877 |

Higher perceptual awareness is associated with both increased accuracy and decreased response time.

## Structure
```
behavioural/
├── behavioural_analysis.Rmd           # Main analysis script
├── out/behaviour_analysis/
│   ├── fig_accuracy_rt_combined.png
│   ├── fig_pas_distribution_3levels.png
│   ├── behavior_summary_results.csv
│   └── table_*.html
└── README.md
```

## Usage

**Requirements:** R 4.5+, packages: `lme4`, `emmeans`, `tidyverse`, `scales`, `gt`, `patchwork`
```r
# Run the analysis
rmarkdown::render("behavioural_analysis.Rmd")
```

## Methods Summary

- PAS levels 3 & 4 collapsed into "Clear Experience" category
- Binomial GLMM (logit link) for accuracy
- Linear mixed model on log-transformed RT
- Subject random intercepts
- Bonferroni-corrected pairwise comparisons
