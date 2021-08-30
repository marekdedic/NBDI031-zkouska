using DelimitedFiles;
using LinearAlgebra;
using Statistics;

using Clustering;
using Distances;
using Plots;
using StatsBase;
using StatsPlots;

plotly();

ds = readdlm("../data.csv", '\t', Float64);

hac = hclust(pairwise(Euclidean(), ds; dims = 2), :single);
plot(hac, size = (1024, 1024))

