workspace "arkanoid"
    architecture "x86_64"
    configurations { "Debug", "Release" }
    platforms { "Win64" }
    --startproject "runtime"

    -- Configurations
    filter "configurations:Debug"
        defines { "DEBUG" }
        optimize "Off"
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
        symbols "Off"
    
    -- Platforms
    filter { "platforms:Win64" }
        system "Windows"
        defines { "PLATFORM_WINDOWS" }

output_dir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

include "runtime/runtime.lua"
include "game/game.lua"