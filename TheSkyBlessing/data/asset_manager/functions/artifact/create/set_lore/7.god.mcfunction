#> asset_manager:artifact/create/set_lore/7.god
#
# 使用できる神を設定します
#
# @within function asset_manager:artifact/create/set_lore/

# ベース文字列
    data modify storage asset:artifact Temp.CanUsedGod set value []
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"Icon.God.Flora","color":"#333333","interpret":true}'
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"Icon.God.Urban","color":"#333333","interpret":true}'
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"Icon.God.Nyaptov","color":"#333333","interpret":true}'
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"Icon.God.Wi-ki","color":"#333333","interpret":true}'
    data modify storage asset:artifact Temp.CanUsedGod append value '{"storage":"global","nbt":"Icon.God.Rumor","color":"#333333","interpret":true}'
# それぞれ
    execute if data storage asset:artifact {CanUsedGod:["Flora"]} run data modify storage asset:artifact Temp.CanUsedGod[0] set from storage global Icon.God.Flora
    execute if data storage asset:artifact {CanUsedGod:["Urban"]} run data modify storage asset:artifact Temp.CanUsedGod[1] set from storage global Icon.God.Urban
    execute if data storage asset:artifact {CanUsedGod:["Nyaptov"]} run data modify storage asset:artifact Temp.CanUsedGod[2] set from storage global Icon.God.Nyaptov
    execute if data storage asset:artifact {CanUsedGod:["Wi-ki"]} run data modify storage asset:artifact Temp.CanUsedGod[3] set from storage global Icon.God.Wi-ki
    execute if data storage asset:artifact {CanUsedGod:["Rumor"]} run data modify storage asset:artifact Temp.CanUsedGod[4] set from storage global Icon.God.Rumor
# 生成
    loot replace block 10000 0 10000 container.7 loot asset_manager:artifact/generate_lore/7.god
# リセット
    data remove storage asset:artifact Temp
