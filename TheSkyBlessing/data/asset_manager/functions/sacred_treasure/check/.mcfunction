#> asset_manager:sacred_treasure/check/
#
# 実行可能かどうかのチェックを行う
#
# @input
#   as player
#   storage asset:sacred_treasure TargetSlot : Slot
# @output tag @s CanUsed
# @within function asset:sacred_treasure/common/check_condition/*

# 対象スロットのデータの取得
    function asset_manager:sacred_treasure/data/current/get
# 事前にtag付与
    tag @s add CanUsed
# 条件を満たしてなかったらtag削除
    # 信仰による制限
        function asset_manager:sacred_treasure/check/check_believe
        execute if entity @s[tag=CheckFailed] unless score @s BelieveLogCD matches 0.. run tellraw @s {"text":"現在の信仰では使えないようだ...","color":"red"}
        execute if entity @s[tag=CheckFailed] unless score @s BelieveLogCD matches 0.. run scoreboard players set @s BelieveLogCD 100
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # SpecialCooldownによる制限
        function asset_manager:sacred_treasure/check/check_special_cooldown
        execute if entity @s[tag=CheckFailed] unless score @s SpecialCDLogCD matches 0.. run tellraw @s {"text":"特殊クールダウンが終わっていません。","color":"red"}
        execute if entity @s[tag=CheckFailed] unless score @s SpecialCDLogCD matches 0.. run scoreboard players set @s SpecialCDLogCD 60
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # MP必要量による制限
        function asset_manager:sacred_treasure/check/check_mp
        execute if entity @s[tag=CheckFailed] unless score @s MPLogCD matches 0.. unless data storage asset:sacred_treasure TargetItems[0].tag.TSB{DisableMPMessage:true} run tellraw @s {"text":"MPが足りない！","color":"red"}
        execute if entity @s[tag=CheckFailed] unless score @s MPLogCD matches 0.. unless data storage asset:sacred_treasure TargetItems[0].tag.TSB{DisableMPMessage:true} run scoreboard players set @s MPLogCD 20
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # LocalCooldownによる制限
        function asset_manager:sacred_treasure/check/check_local_cooldown/
        execute if entity @s[tag=CheckFailed] unless score @s LocalCDLogCD matches 0.. unless data storage asset:sacred_treasure TargetItems[0].tag.TSB{DisableCooldownMessage:true} run tellraw @s {"text":"クールダウンが終わっていません。","color":"red"}
        execute if entity @s[tag=CheckFailed] unless score @s LocalCDLogCD matches 0.. unless data storage asset:sacred_treasure TargetItems[0].tag.TSB{DisableCooldownMessage:true} run scoreboard players set @s LocalCDLogCD 20
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
# 条件を満たしてない && 使用回数が存在する && トリガーがitemUse ならば使用回数を減らす
    execute if entity @s[tag=!CanUsed] if data storage asset:sacred_treasure TargetItems[0].tag.TSB.RemainingCount if data storage asset:sacred_treasure TargetItems[0].tag.TSB{Trigger:"itemUse"} run function asset_manager:sacred_treasure/use/item/has_remain
# リセット
    data remove storage asset:sacred_treasure TargetSlot
    data remove storage asset:sacred_treasure TargetDefaultSlot
    data remove storage asset:sacred_treasure TargetItems