local project = Project(
    "SIMDStringX86",
    "C++",
    "SIMDString.lib",
    { "SIMDString.cpp" },
    {
        ["SIMDString.cpp"] = "SIMDString.cpp",
        ["SIMDString.h"] = "SIMDString.h",
    },
    { "." }, 
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    "x86",
    "StaticLibrary"
)

tasks:create("build_mingw", function() 
    project.arch = "i686"
    project.output = "libSIMDString.a"
    mingw:build(project)
end)

tasks:create("build_msvc", function() 
    msvc:build(project)
end)