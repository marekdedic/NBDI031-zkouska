using DelimitedFiles;
using LinearAlgebra;
using Statistics;

using Plots
using StatsBase;

plotly();

ds = readdlm("../data.csv", '\t', Float64);
y = parse.(Int, readlines("../labels.csv"));

# Normalize variance
ds = mapslices(x -> (x .- mean(x)) / std(x), ds; dims = 2);

covariance = cov(ds; dims = 2, corrected = false);

eigendecomposition = eigen(covariance);

principals = eigendecomposition.vectors[end:-1:end - 2, :];

in_principals = principals * ds;

plt = plot(in_principals[1, y .== 0], in_principals[2, y .== 0], in_principals[3, y .== 0], seriestype = :scatter, markersize = 1, label = "Negative", size = (800, 800));
plot!(plt, in_principals[1, y .== 1], in_principals[2, y .== 1], in_principals[3, y .== 1], seriestype = :scatter, markersize = 1, label = "Positive");
display(plt);

axisNegativePoints = principals * Matrix(-1.0I, size(ds, 1), size(ds, 1))
axisPositivePoints = principals * Matrix(1.0I, size(ds, 1), size(ds, 1))

plt = plot(size = (1024, 1024));
for i in 1:size(ds, 1)
	plot!(plt, [axisNegativePoints[1, i], axisPositivePoints[1, i]], [axisNegativePoints[2, i], axisPositivePoints[2, i]], [axisNegativePoints[3, i], axisPositivePoints[3, i]], seriestype = :straightline);
end
display(plt);
