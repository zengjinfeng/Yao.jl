using Documenter, Yao, Yao.Blocks
using Yao.LuxurySparse, Yao.CacheServers, Yao.Intrinsics
using Yao.Registers, Yao.Interfaces

makedocs(
    modules = [Yao, Yao.Blocks, Yao.LuxurySparse, Yao.CacheServers, Yao.Intrinsics, Yao.Registers, Yao.Interfaces],
    clean = false,
    format = :html,
    sitename = "Yao",
    linkcheck = !("skiplinks" in ARGS),
    analytics = "UA-89508993-1",
    pages = [
        "Home" => "index.md",
        "Tutorial" => Any[
            "tutorial/GHZ.md",
            "tutorial/QFT.md",
            "tutorial/QCBM.md",
        ],
        "Manual" => Any[
            "man/interfaces.md",
            "man/registers.md",
            "man/blocks.md",
            "man/cache.md",
            "man/intrinsics.md",
            "man/luxurysparse.md",
        ],
        "Developer Documentation" => Any[
            "dev/extending-blocks.md"
        ],
        # "Theoretical Notes" => Any[
        #     "theo/register.md",
        #     "theo/rotation.md",
        #     "theo/grover.md",
        #     "theo/blocks.md",
        # ],
    ],
    html_prettyurls = !("local" in ARGS),
    html_canonical = "https://quantumbfs.github.io/Yao.jl/latest/",
)

deploydocs(
    repo = "github.com/QuantumBFS/Yao.jl.git",
    target = "build",
    julia = "0.6",
    deps = nothing,
    make = nothing,
)
