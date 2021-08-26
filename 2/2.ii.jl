using DelimitedFiles;

using Plots;

plotly();

ds = readdlm("../data.csv", '\t', Float64);

plots = map(1:size(ds, 1)) do i
	return histogram(ds[i, :], title = "Attribute " * string(i), label = "");
end
plot(plots..., size = (4096, 4096))
