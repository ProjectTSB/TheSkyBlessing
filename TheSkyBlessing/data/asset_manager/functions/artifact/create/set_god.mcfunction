#> asset_manager:artifact/create/set_god
#
# 使用できる神を設定します
#
# @within function asset_manager:artifact/create/set_lore

# ベース文字列
    data modify storage asset:artifact Temp.CanUsedGod set value []
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"GodIcon.Flora","color":"#333333","interpret":true}'
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"GodIcon.Urban","color":"#333333","interpret":true}'
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"GodIcon.Nyaptov","color":"#333333","interpret":true}'
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"GodIcon.Wi-ki","color":"#333333","interpret":true}'
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"GodIcon.Rumor","color":"#333333","interpret":true}'
# それぞれ
    execute if data storage asset:artifact {CanUsedGod:["Flora"]} run data modify storage asset:artifact Temp.CanUsedGod[0] set from storage global GodIcon.Flora
    execute if data storage asset:artifact {CanUsedGod:["Urban"]} run data modify storage asset:artifact Temp.CanUsedGod[1] set from storage global GodIcon.Urban
    execute if data storage asset:artifact {CanUsedGod:["Nyaptov"]} run data modify storage asset:artifact Temp.CanUsedGod[2] set from storage global GodIcon.Nyaptov
    execute if data storage asset:artifact {CanUsedGod:["Wi-ki"]} run data modify storage asset:artifact Temp.CanUsedGod[3] set from storage global GodIcon.Wi-ki
    execute if data storage asset:artifact {CanUsedGod:["Rumor"]} run data modify storage asset:artifact Temp.CanUsedGod[4] set from storage global GodIcon.Rumor
# 生成
    loot replace block 10000 0 10000 container.9 loot asset_manager:artifact/generate_lore/god
# リセット
    data remove storage asset:artifact Temp