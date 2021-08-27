using DelimitedFiles;
using LinearAlgebra;
using Statistics;

using StatsBase;

ds = readdlm("../data.csv", '\t', Float64);
#y = parse.(Int, readlines("../labels.csv"));

covariance = cov(ds; dims = 2, corrected = false);

eigendecomposition = eigen(covariance);

principals = eigendecomposition.vectors[end:-1:end-2, :];

in_principals = principals * ds;

println("3 principal components");
principals

println("3 principal components of the dataset");
in_principals
