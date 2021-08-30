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

centroid = kmeans(ds, 20);
