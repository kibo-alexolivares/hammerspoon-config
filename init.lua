function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")



hs.hotkey.bind({"`", "cmd"}, "j", function() hs.application.launchOrFocus("Slack"); c() end)
hs.hotkey.bind({"`", "cmd"}, "k", function() hs.application.launchOrFocus("Google Chrome"); c() end)
hs.hotkey.bind({"`", "cmd"}, "h", function() hs.application.launchOrFocus("Microsoft Outlook"); c() end)
hs.hotkey.bind({"`", "cmd"}, "u", function() hs.application.launchOrFocus("Finder"); c() end)
hs.hotkey.bind({"`", "cmd"}, "l", function() hs.application.launchOrFocus("iTerm"); c() end)
hs.hotkey.bind({"`", "cmd"}, ";", function() hs.application.launchOrFocus("Visual Studio Code"); c() end)
hs.hotkey.bind({"`", "cmd"}, "b", function() hs.application.launchOrFocus("Brave Browser"); c() end)
hs.hotkey.bind({"`", "cmd"}, "e", function() hs.application.launchOrFocus("Microsoft Excel"); c() end)
hs.hotkey.bind({"`", "cmd"}, "p", function() hs.application.launchOrFocus("Postman"); c() end)
hs.hotkey.bind({"`", "cmd"}, "o", function() hs.application.launchOrFocus("Microsoft OneNote"); c() end)
hs.hotkey.bind({"`", "cmd"}, "z", function() hs.application.launchOrFocus("Zoom.us"); c() end)
