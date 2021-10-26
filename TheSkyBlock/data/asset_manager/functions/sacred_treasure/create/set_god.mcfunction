#> asset_manager:sacred_treasure/create/set_god
#
# 使用できる神を設定します
#
# @within function asset_manager:sacred_treasure/create/set_lore

# ベース文字列
    data modify storage asset:sacred_treasure Temp.CanUsedGod set value ['{"text":"\\uE010","color":"#333333","font":"tsb"}','{"text":"\\uE011","color":"#333333","font":"tsb"}','{"text":"\\uE012","color":"#333333","font":"tsb"}','{"text":"\\uE013","color":"#333333","font":"tsb"}','{"text":"\\uE014","color":"#333333","font":"tsb"}']
# それぞれ
    execute if data storage asset:sacred_treasure {CanUsedGod:["Flora"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[0] set value '{"text":"\\uE010","color":"white","font":"tsb"}'
    execute if data storage asset:sacred_treasure {CanUsedGod:["Urban"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[1] set value '{"text":"\\uE011","color":"white","font":"tsb"}'
    execute if data storage asset:sacred_treasure {CanUsedGod:["Nyaptov"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[2] set value '{"text":"\\uE012","color":"white","font":"tsb"}'
    execute if data storage asset:sacred_treasure {CanUsedGod:["Wi-ki"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[3] set value '{"text":"\\uE013","color":"white","font":"tsb"}'
    execute if data storage asset:sacred_treasure {CanUsedGod:["Rumor"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[4] set value '{"text":"\\uE014","color":"white","font":"tsb"}'
# 生成
    loot replace block 10000 0 10000 container.8 loot asset_manager:sacred_treasure/generate_lore/god
# リセット
    data remove storage asset:sacred_treasure Temp