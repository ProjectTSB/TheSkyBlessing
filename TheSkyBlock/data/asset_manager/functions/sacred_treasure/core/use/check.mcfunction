#> asset_manager:sacred_treasure/core/use/check
#
# 実行可能かどうかのチェックを行う
#
# @input
#   as player
#   storage asset:sacred_treasure TargetSlot : Slot
# @output tag @s CanUsed
# @within function asset:sacred_treasure/lib/check_condition/*

#> Private
# @private
    #declare tag PassConditionA
    #declare tag PassConditionB
    #declare tag PassConditionC
    #declare tag PassConditionD
    #declare score_holder $ReqMP
    #declare score_holder $CheckMP
    #declare score_holder $CheckMPRes
    #declare score_holder $LatestUsedTick
    #declare score_holder $Tick
    #declare score_holder $Cooldown

# 対象スロットのデータの取得
    function asset_manager:sacred_treasure/core/use/get_item_data
# 条件を満たしてたらtagを付与
    # MP必要量による制限
        execute store result score $CheckMP Lib run data get storage asset:sacred_treasure Item.tag.TSB.MPRequire
        execute unless score $CheckMP Lib matches -2147483648.. store result score $CheckMP Lib run data get storage asset:sacred_treasure Item.tag.TSB.MPCost
        execute store result score $CheckMPRes Temporary run function lib:mp/check
        execute if score $CheckMPRes Temporary matches 1 run tag @s add PassConditionA
        scoreboard players reset $CheckMPRes Temporary
    # 信仰による制限
        execute if data storage asset:sacred_treasure Item.tag.TSB{CanUsedGod:["Flora"]} if predicate player_manager:is_believe/flora run tag @s add PassConditionB
        execute if data storage asset:sacred_treasure Item.tag.TSB{CanUsedGod:["Nyaptov"]} if predicate player_manager:is_believe/nyaptov run tag @s add PassConditionB
        execute if data storage asset:sacred_treasure Item.tag.TSB{CanUsedGod:["Rumor"]} if predicate player_manager:is_believe/rumor run tag @s add PassConditionB
        execute if data storage asset:sacred_treasure Item.tag.TSB{CanUsedGod:["Urban"]} if predicate player_manager:is_believe/urban run tag @s add PassConditionB
        execute if data storage asset:sacred_treasure Item.tag.TSB{CanUsedGod:["Wi-ki"]} if predicate player_manager:is_believe/wi-ki run tag @s add PassConditionB
    # LocalCooldownによる制限
        execute store result score $LatestUsedTick Temporary run data get storage asset:sacred_treasure Item.tag.TSB.LatestUseTick
        execute store result score $Tick Temporary run time query gametime
        execute store result score $Cooldown Temporary run data get storage asset:sacred_treasure Item.tag.TSB.LocalCooldown
        scoreboard players operation $Tick Temporary -= $LatestUsedTick Temporary
        execute if score $Tick Temporary >= $Cooldown Temporary run tag @s add PassConditionC
    # SpecialCooldownによる制限
        tag @s add PassConditionD
        execute if data storage asset:sacred_treasure Item.tag.TSB.SpecialCooldown if score $SacredTreasureSpecialCooldown Global matches 1.. run tag @s remove PassConditionD
# 両方の条件を満たしていた場合CanUsedを付与
    execute if entity @s[tag=PassConditionA,tag=PassConditionB,tag=PassConditionC,tag=PassConditionD] run tag @s add CanUsed
# 条件を満たしていなかった時のユーザー側への通知
    execute if entity @s[tag=!PassConditionA] run tellraw @s {"text":"MPが足りない！","color":"red"}
    execute if entity @s[tag=!PassConditionB] run tellraw @s {"text":"現在の信仰では使えないようだ...","color":"red"}
    execute if entity @s[tag=!PassConditionC] run tellraw @s {"text":"クールダウンが終わっていません。","color":"red"}
    execute if entity @s[tag=!PassConditionD] run tellraw @s {"text":"グローバルクールダウンが終わっていません。","color":"red"}
# リセット
    tag @s remove PassConditionA
    tag @s remove PassConditionB
    tag @s remove PassConditionC
    tag @s remove PassConditionD
    scoreboard players reset $ReqMP Temporary
    scoreboard players reset $LatestUsedTick Temporary
    scoreboard players reset $Tick Temporary
    scoreboard players reset $Cooldown Temporary
    data remove storage asset:sacred_treasure TargetSlot
    data remove storage asset:sacred_treasure Item