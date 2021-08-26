using DelimitedFiles;
using Statistics;

using StatsBase

ds = readdlm("../data.csv", '\t', Float64);

covariance = Matrix{Float64}(undef, size(ds, 1), size(ds, 1));
correlation = Matrix{Float64}(undef, size(ds, 1), size(ds, 1));
for i in 1:size(ds, 1)
	mean_i = mean(ds[i, :]);
	for j in 1:size(ds, 1)
		mean_j = mean(ds[j, :]);
		covariance[i, j] = mapreduce(k -> (ds[i, k] - mean_i) * (ds[j, k] - mean_j), +, 1:size(ds, 2)) / size(ds, 2);
		correlation[i, j] = covariance[i, j] / (std(ds[i, :]) * std(ds[j, :]));
	end
end
# Or cov(ds; dims = 2, corrected = false)
# And cov2cor(covariance, mapslices(std, ds; dims = 2))

println("Covariance matrix");
covariance

println("Correlation matrix");
correlation
