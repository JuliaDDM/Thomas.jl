module Thomas

using SparseArrays
using Base.Cartesian
using Base.Iterators

import Base: size, getindex, zeros

export laplacian, CartesianDecomposition, allocate, synchronize!

const cnt = Vector{Int}(undef, 3)

include("boundarycondition.jl")
include("laplacian.jl")
include("cartesian.jl")
include("arrays.jl")
include("synchronize.jl")

__init__() = cnt .= 0

end
