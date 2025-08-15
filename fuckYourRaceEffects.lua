-- Whoever made FR must be pretty bad at programming if they didn't realize
-- they could just put these fucking race effect configs in the goddamn species config
-- and not have to deal with this fucking error polluting the log

-- fuck you
if assets.exists("/species/apex.raceeffect") then
    sb.logInfo("These fucking race effects.\n \nThey could have just patched them in as an object in the .species config...\nbut chose to pollute the error log every time a player or npc initializes instead!\n \nFuck em.")

    for _, path in ipairs(assets.byExtension("species")) do
        local path = (path:sub(1, -#"species" - 1)).."raceeffect"
        if not assets.exists(path) then
            sb.logInfo("adding dummy at '%s'", path)
            assets.add(path, '{}')
        else
            sb.logInfo("'%s' already exists", path)
        end
    end
else
    sb.logInfo("You don't need to have this mod but thanks anyway :)")
end
