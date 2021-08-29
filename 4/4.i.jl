using DelimitedFiles;

using HypothesisTests;

ds = readdlm("../data.csv", '\t', Float64);
y = parse.(Int, readlines("../labels.csv"));

for i in 1:size(ds, 1)
	negative = ds[i, :][y .== 0];
	positive = ds[i, :][y .== 1];

	support = unique(ds[i, :]);
	negative_pdf = map(x -> count(negative .== x), support);
	negative_pdf = negative_pdf ./ sum(negative_pdf);
	positive_pdf = map(x -> count(positive .== x), support);
	positive_pdf = positive_pdf ./ sum(positive_pdf);
	negative_cdf = cumsum(negative_pdf);
	positive_cdf = cumsum(positive_pdf);

	statistic = maximum(i -> abs(negative_cdf[i] - positive_cdf[i]), 1:length(support))
	level = 2 * exp(-2 * statistic * length(negative) * length(positive) / (length(negative) + length(positive)));

	println("Attribute " * string(i) * " level of the rejection of the null hypothesis that the distribution is independent of the label");
	println(level);
	println();

	# println(ApproximateTwoSampleKSTest(negative, positive));
end
