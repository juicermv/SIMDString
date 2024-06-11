local target = workspace:create_msvc_target("SIMDStringX86")

target.arch = "x86"
target.output = "SIMDString.lib"
target.static_library = true
target.include_paths = { "." }
target.files = { "SIMDString.cpp" }
target.assets = {
    ["SIMDString.cpp"] = "SIMDString.cpp",
    ["SIMDString.h"] = "SIMDString.h",
}

workspace:register_target(target)