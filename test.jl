using PyCall
using Test
include("../coexist.jl/src/diseaseProg.jl")
x = reshape(Vector(0:479), (4,5,4,3,2)) #2, 3, 4, 5, 4
println(x)
py"""
import os
f = r"/home/dinskid/Files/Julia/test/test.py"
# print(f.read())
exec(open(f).read())
"""

_x = py"x"
y = einsum("ijlml->ijlm", x)

@test x == _x