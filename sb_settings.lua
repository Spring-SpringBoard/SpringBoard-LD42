local UIWidgets = {
    "selection_display", "resource-ui"
}

local SBHiddenWidgets = {
    "Chili Selections & CursorTip"
}

return {
    startStop = {
        x = "48.5%",
        y = 52,
    },

    OnStopEditingUnsynced = function()
        for _, widgetName in ipairs(UIWidgets) do
            widgetHandler:EnableWidget(widgetName)
        end

        for _, widgetName in ipairs(SBHiddenWidgets) do
            widgetHandler:DisableWidget(widgetName)
        end
    end,

    OnStartEditingUnsynced = function()
        for _, widgetName in ipairs(UIWidgets) do
            widgetHandler:DisableWidget(widgetName)
        end

        for _, widgetName in ipairs(SBHiddenWidgets) do
            widgetHandler:EnableWidget(widgetName)
        end

        Spring.SendCommands("tooltip 0")
        gl.SlaveMiniMap(true)
    end,
}
