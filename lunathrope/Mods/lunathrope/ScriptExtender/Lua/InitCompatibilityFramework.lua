modGuid = "29d0c98d-6723-45a5-88ee-1f7ed0a9c8d7"
subClassGuid = "aa93c7a9-e504-4cd1-83b5-ebd80cb4ac7a"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
    local subClasses = {
      khbsd_Lycanite = {
        modGuid = "29d0c98d-6723-45a5-88ee-1f7ed0a9c8d7",
        subClassGuid = "aa93c7a9-e504-4cd1-83b5-ebd80cb4ac7a",
        class = "monk",
        subClassName = "Lycanite"
      }
    }

    local function OnStatsLoaded()
        Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
    end

    Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end