from juliacall import Main as jl

# Run the Julia simulation
jl.seval('include("simulator.jl")')
result = jl.seval("simulate()")

# Process the result in Python
print("The result from the Julia simulation is: ", result)
