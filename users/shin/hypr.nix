{ config, pkgs, ... }:

{
    wayland.windowManager.hyprland = {
        enable = true;
        extraLuaFiles = {
            "bindings" = {
                content = ../../config/hypr/bindings.lua;
                autoLoad = true;
            };

            "input" = {
                content = ../../config/hypr/input.lua;
                autoLoad = true;
            };

            "aesthetics.general" = {
                content = ../../config/hypr/aesthetics/general.lua;
                autoLoad = true;
            };

            "monitors" = {
                content = ../../config/hypr/monitors.lua;
                autoLoad = true;
            };

            "general" = {
                content = ../../config/hypr/general.lua;
                autoLoad = true;
            };
        };
    };
}
