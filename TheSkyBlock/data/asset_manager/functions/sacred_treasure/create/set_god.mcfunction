#> asset_manager:sacred_treasure/create/set_god
#
# 使用できる神を設定します
#
# @within function asset_manager:sacred_treasure/create/set_lore

# ベース文字列
    data modify storage asset:sacred_treasure Temp.CanUsedGod set value ['{"translate":"ﾌﾛ"}','{"translate":"ｳﾙ"}','{"translate":"ﾆｬ"}','{"translate":"ｳｨ"}','{"translate":"ﾙｰ"}']
# それぞれ
    execute if data storage asset:sacred_treasure {CanUsedGod:["Flora"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[0] set value '{"translate":"ﾌﾛ","color":"green"}'
    execute if data storage asset:sacred_treasure {CanUsedGod:["Urban"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[1] set value '{"translate":"ｳﾙ","color":"green"}'
    execute if data storage asset:sacred_treasure {CanUsedGod:["Nyaptov"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[2] set value '{"translate":"ﾆｬ","color":"green"}'
    execute if data storage asset:sacred_treasure {CanUsedGod:["Wi-ki"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[3] set value '{"translate":"ｳｨ","color":"green"}'
    execute if data storage asset:sacred_treasure {CanUsedGod:["Rumor"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[4] set value '{"translate":"ﾙｰ","color":"green"}'
# 生成
    loot replace block 10000 0 10000 container.8 loot asset_manager:sacred_treasure/generate_lore/god
# リセット
    data remove storage asset:sacred_treasure Temp