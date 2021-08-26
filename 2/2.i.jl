using DelimitedFiles;
using Statistics;

using StatsBase

ds = readdlm("../data.csv", '\t', Float64);

for i in 1:size(ds, 1)
	print("Attribute ");
	println(i);
#
	print("Mean: ");
	attr_mean = sum(ds[i, :]) / size(ds, 2); # Or mean(ds[i, :])
	println(attr_mean);
#
	print("Variance: ");
	nth_central_moment(x, n) = mapreduce(y -> (y - mean(x))^n, +, x) / length(x);
	attr_variance = nth_central_moment(ds[i, :], 2); # Or var(ds[i, :])
	println(attr_variance);
#
	print("Standard deviation: ");
	attr_std = sqrt(attr_variance); # Or std(ds[i, :])
	println(attr_std);
#
	print("Skewness: ");
	attr_skewness = nth_central_moment(ds[i, :], 3) / attr_std^3; # Or skewness(ds[i, :])
	println(attr_skewness);
#
	print("Kurtosis: ");
	attr_skewness = nth_central_moment(ds[i, :], 4) / attr_variance^2; # Or kurtosis(ds[i, :])
	println(attr_skewness);
#
	println();
end
