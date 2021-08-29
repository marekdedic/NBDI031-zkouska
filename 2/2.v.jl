using DelimitedFiles;
using LinearAlgebra;
using Statistics;

using MultivariateStats;
using StatsBase;

ds = readdlm("../data.csv", '\t', Float64);

num_factors = 2;
covariance = cov(ds; dims = 2, corrected = false);
eigendecomposition = eigen(covariance);
principals = eigendecomposition.vectors[end:-1:begin, :];
in_principals = principals * ds;

factors = mapslices(x -> x ./ std(x), principals[1:num_factors, :]; dims = 2);
loadings = hcat(map(i -> in_principals[:, i] ./ std(principals[:, i]), 1:size(in_principals, 1))...)[:, 1:num_factors];
