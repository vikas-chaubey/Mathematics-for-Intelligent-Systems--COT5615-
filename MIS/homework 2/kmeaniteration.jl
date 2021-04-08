using Statistics, LinearAlgebra, SparseArrays, Plots
include("/Users/vikas/Downloads/wikipedia_corpus.jl")
include("/Users/vikas/Downloads/kmeans.jl")
using Main.Kmeans
p=plot(0,0,lw=3)
title!("k=10 Graph")
xlabel!("Iterations")
ylabel!("J")
for l in 1:2
   	centroids, labels, j_hist = Main.Kmeans.kmeans(article_histograms, 10)
	centroids[labels[30]]
	n= length(j_hist)
	k = zeros(Int64, n)
	y = zeros(Float64, n)
	for i in 1:n
    	k[i]= i
    	y[i] = j_hist[i]
	end
	
	plot!(p,k,y)	 
	
end
savefig(p,"/Users/vikas/Documents/graph.jpg")