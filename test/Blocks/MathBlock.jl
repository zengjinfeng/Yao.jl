using Test

using Yao
using Yao.Blocks: MathBlock, isunitary

"""
    pshift(n::Int) -> Function

return a peridoc shift function.
"""
pshift(n::Int) = (b::Int, nbit::Int) -> mod(b+n, 1<<nbit)

@testset "math" begin
    nbit = 5
    ab = MathBlock{:Add3, nbit}(pshift(3))
    mb = MathBlock{:Minus3, nbit}(pshift(-3))
    @test apply!(zero_state(nbit), ab) == product_state(nbit, 3)
    @test apply!(zero_state(nbit), mb) == product_state(nbit, 1<<nbit-3)
    @test isunitary(ab)
end
