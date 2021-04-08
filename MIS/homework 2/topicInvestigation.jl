using Statistics, LinearAlgebra, SparseArrays, Plots
include("/Users/vikas/Downloads/wikipedia_corpus.jl")
include("/Users/vikas/Downloads/kmeans.jl")
using Main.Kmeans
centroids, labels, j_hist = Main.Kmeans.kmeans(article_histograms, 5)
print("==================================T-I-T-L-E-S=====================================")
article_titles[labels .== 1]
print("==================================W-O-R-D-S======================================")
dictionary[sortperm(centroids[1],rev=true)]


	