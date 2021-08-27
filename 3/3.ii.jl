using DelimitedFiles;
using LinearAlgebra;
using Statistics;

using StatsBase;

ds = readdlm("../data.csv", '\t', Float64);

# Normalize variance
ds = mapslices(x -> (x .- mean(x)) / std(x), ds; dims = 2);

covariance = cov(ds; dims = 2, corrected = false);

eigendecomposition = eigen(covariance);

principals = eigendecomposition.vectors[end:-1:end - 2, :];

in_principals = principals * ds;

variance_share = 100 .* eigendecomposition.values ./ sum(eigendecomposition.values);

println("3 principal components");
println(principals);

println("3 principal components of the dataset");
println(in_principals);

println("Variance share of the 3 pricipal components (in %)")
println(variance_share[end:-1:end - 2]);
