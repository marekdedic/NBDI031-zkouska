using DelimitedFiles;
using LinearAlgebra;
using Statistics;

using Clustering;
using Distances;
using MultivariateStats;
using Plots;
using StatsBase;
using StatsPlots;

plotly();

ds = readdlm("../data.csv", '\t', Float64);

hac = hclust(pairwise(Euclidean(), ds; dims = 2), :single);
hac_clusters = cutree(hac; k = 20);

centroid = kmeans(ds, 20);
centroid_clusters = centroid.assignments;

# Visualize with PCA

M = fit(PCA, ds, maxoutdim = 3);
in_pca = transform(M, ds);

hac_plt = plot(title = "HAC", legend = false, size = (1500, 800));
for i in 1:20
	plot!(hac_plt, in_pca[1, hac_clusters .== i], in_pca[2, hac_clusters .== i], in_pca[3, hac_clusters .== i], seriestype = :scatter, markersize = 1);
end
display(hac_plt);

centroid_plt = plot(title = "K-means", legend = false, size = (1500, 800));
for i in 1:20
	plot!(centroid_plt, in_pca[1, centroid_clusters .== i], in_pca[2, centroid_clusters .== i], in_pca[3, centroid_clusters .== i], seriestype = :scatter, markersize = 1);
end
display(centroid_plt);
