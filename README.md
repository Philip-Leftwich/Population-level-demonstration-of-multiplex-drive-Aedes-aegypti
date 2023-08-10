# Population level demonstration of a multiplexed confinable CRISPR/Cas9 gene drive system in the yellow fever mosquito *Aedes aegypti*
Phenotype analyses to accompany submitted manuscript currently in review

# Journal: [Biorxiv](https://www.biorxiv.org/content/10.1101/2022.08.12.503466v1)

# Abstract
Aedes aegypti, the yellow fever mosquito, is the main vector of several major pathogens including yellow fever, dengue, Zika and chikungunya viruses. Classical mosquito control strategies, mainly utilizing insecticides, have had success in controlling other mosquito vectors in recent years, but are much less useful against Ae. aegypti, and even these methods are threatened by rising insecticide resistance. This has stimulated interest in new mosquito control mechanisms, notably genetic systems such as gene drives. However, the development of CRISPR/Cas9 gene drive systems has faced challenges such as low inheritance biasing rate, the emergence of resistance alleles, and the possibility of spreading beyond the intended population. Here, we test the regulatory sequences from the Ae. aegypti benign gonial cell neoplasm (bgcn) homolog to express Cas9 in the germline to find an expression timing more conducive to homing. We also created a separate multiplexing (targeting multiple different sites within the target gene) sgRNA-expressing homing cassette inserted into the Ae. aegypti kynurenine 3-monooxygenase (kmo) gene to limit the consequences of resistance alleles. This creates a ‘split’ gene drive such that one part does not drive, allowing control over geographic spread and temporal persistence. When combined, these two elements provide highly effective germline cutting at the kmo locus and act as a gene drive. Our target genetic element was driven through a cage trial population such that carrier frequency of the element increased from 50% to up to 89% of the population despite significant fitness costs to kmo insertions. Deep sequencing suggests that the multiplexing design could mitigate resistance allele formation in our gene drive system.

# Software

We carried out all phenotype analyses using R  version 3.6.2 (R Development Core Team).  
- Likelihood ratio tests carried out with `DescTools`  
- Generalized linear mixed model (GLMM) analyses were carried out using `lme4`
- Estimated marginal means calculated with `emmeans`

  # Analysis
Likelihood ratio tests and GLMMs can be run from file `analysis.R`


