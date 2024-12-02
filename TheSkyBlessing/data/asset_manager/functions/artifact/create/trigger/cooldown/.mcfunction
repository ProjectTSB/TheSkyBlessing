#> asset_manager:artifact/create/trigger/cooldown/
#
#
#
# @input args
#   Path: int
#   ExportSlot: int
# @within function asset_manager:artifact/create/trigger/

# 各クールダウンの文章を生成する
    execute if data storage asset:artifact LocalCooldown run function asset_manager:artifact/create/trigger/cooldown/make_duration.m {CooldownPath:"storage asset:artifact LocalCooldown",IconPath:"storage global Icon.Cooldown.Local"}
    execute if data storage asset:artifact TypeCooldown{Type:"shortRange"} run function asset_manager:artifact/create/trigger/cooldown/make_duration.m {CooldownPath:"storage asset:artifact TypeCooldown.Duration",IconPath:"storage global Icon.Cooldown.Type.ShortRange"}
    execute if data storage asset:artifact TypeCooldown{Type: "longRange"} run function asset_manager:artifact/create/trigger/cooldown/make_duration.m {CooldownPath:"storage asset:artifact TypeCooldown.Duration",IconPath:"storage global Icon.Cooldown.Type.LongRange"}
    execute if data storage asset:artifact TypeCooldown{Type:    "summon"} run function asset_manager:artifact/create/trigger/cooldown/make_duration.m {CooldownPath:"storage asset:artifact TypeCooldown.Duration",IconPath:"storage global Icon.Cooldown.Type.Summon"}
    execute if data storage asset:artifact TypeCooldown{Type:      "heal"} run function asset_manager:artifact/create/trigger/cooldown/make_duration.m {CooldownPath:"storage asset:artifact TypeCooldown.Duration",IconPath:"storage global Icon.Cooldown.Type.Heal"}
    execute if data storage asset:artifact SpecialCooldown run function asset_manager:artifact/create/trigger/cooldown/make_duration.m {CooldownPath:"storage asset:artifact SpecialCooldown",IconPath:"storage global Icon.Cooldown.Global"}
# lootする
    execute if data storage asset:artifact Cooldown[0] run loot replace block 10000 0 10000 container.6 loot asset_manager:artifact/generate_lore/cooldown
# リセット
    data remove storage asset:artifact Cooldown
