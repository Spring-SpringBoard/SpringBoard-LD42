local UIWidgets = {}

return {
    startStop = {
        x = "48.5%",
        y = 52,
    },

    OnStopEditingUnsynced = function()
        for _, widgetName in ipairs(UIWidgets) do
            widgetHandler:EnableWidget(widgetName)
        end
    end,

    OnStartEditingUnsynced = function()
        for _, widgetName in ipairs(UIWidgets) do
            widgetHandler:DisableWidget(widgetName)
        end
        Spring.SendCommands("tooltip 0")
        gl.SlaveMiniMap(true)
    end,
}
