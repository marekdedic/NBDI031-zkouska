using DelimitedFiles;
using LinearAlgebra;
using Statistics;

using Distances;
using StatsBase;

ds = readdlm("../data.csv", '\t', Float64);
ds = ds[:, 1:100]

function clusterDistance(first::Matrix{Float64}, second::Matrix{Float64}, distance::PreMetric, linkage::Symbol)
	distances = pairwise(distance, first, second; dims = 2)
	if linkage === :single
		return minimum(distances)
	elseif linkage === :complete
		return maximum(distances);
	elseif linkage === :average
		return mean(distances);
	end
	error();
end

function HAC(ds::Matrix{Float64}, distance::PreMetric, linkage::Symbol = :single)
	steps = Vector{Vector{Int}}();
	clusterIndices = collect(1:size(ds, 2));
	push!(steps, deepcopy(clusterIndices));
	while length(unique(clusterIndices)) > 2
		indices = unique(clusterIndices);
		distances = Matrix{Float64}(undef, length(indices), length(indices));
		for (i, first) in enumerate(indices)
			for (j, second) in enumerate(indices)
				distances[i, j] = clusterDistance(ds[:, clusterIndices .== first], ds[:, clusterIndices .== second], distance, linkage);
			end
		end
		distances[diagind(distances)] .= Inf;
		minimum_pair = argmin(distances);
		clusterIndices[clusterIndices .== indices[minimum_pair[2]]] .= minimum(clusterIndices[clusterIndices .== indices[minimum_pair[1]]]);
		push!(steps, deepcopy(clusterIndices));
	end
	return steps;
end

HAC(ds, Euclidean(), :single)
HAC(ds, SqEuclidean(), :single)
