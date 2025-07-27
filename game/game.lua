project "game"
    kind "SharedLib"
    language "C++"
    cppdialect "C++17"
    
    files { "src/**.cpp", "src/**.h" }

    includedirs 
    {
        "src"
    }

    targetdir ("../binaries/" .. output_dir .. "/%{prj.name}")
    objdir ("../binaries/intermediates" .. output_dir .. "/%{prj.name}")