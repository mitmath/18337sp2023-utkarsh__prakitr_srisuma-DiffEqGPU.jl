import Pkg

Pkg.update()

@info "Add MetalKernels for KernelAbstractions"

Pkg.add(PackageSpec(url = "https://github.com/tgymnich/KernelAbstractions.jl.git",
                    rev = "metal", subdir = "lib/MetalKernels"))
# PPkg.add(PackageSpec(url = "https://github.com/tgymnich/KernelAbstractions.jl.git",
#                      rev = "metal"))

Pkg.build()
Pkg.precompile()
