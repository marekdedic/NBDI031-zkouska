using DelimitedFiles;
using Statistics;

using StatsBase

ds = readdlm("../data.csv", '\t', Float64);
y = parse.(Int, readlines("../labels.csv"));

covariance_negative = cov(ds[:, y .== 0]; dims = 2, corrected = false);
correlation_negative = cov2cor(covariance_negative, mapslices(std, ds[:, y .== 0]; dims = 2));
covariance_positive = cov(ds[:, y .== 1]; dims = 2, corrected = false);
correlation_positive = cov2cor(covariance_negative, mapslices(std, ds[:, y .== 1]; dims = 2));

println("Covariance matrix for negative class");
covariance_negative

println("Correlation matrix for negative class");
correlation_negative

println("Covariance matrix for positive class");
covariance_positive

println("Correlation matrix for positive class");
correlation_positive
