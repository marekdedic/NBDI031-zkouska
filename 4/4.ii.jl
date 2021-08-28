using DelimitedFiles;

using Plots;
using StatsPlots;

plotly();

ds = readdlm("../data.csv", '\t', Float64);
y = parse.(Int, readlines("../labels.csv"));

plots = map(1:size(ds, 1)) do i
	return groupedhist(ds[i, :], group = y, bar_position = :stack, title = "Attribute " * string(i), label = "");
end
plot(plots..., size = (4096, 4096))
