#> asset_manager:artifact/check/.m
#
# 実行可能かどうかのチェックを行う
#
# @input
#   as player
#   storage asset:artifact
#       Index? : int
#       TargetSlot : Slot
#       IgnoreCondition? : "all" | string[]
# @output tag @s CanUsed
# @within function asset:artifact/common/check_condition/*

# 対象スロットのデータの取得
    function asset_manager:artifact/data/current/get
# 事前にtag付与
    tag @s add CanUsed
# allを分解
    execute if data storage asset:artifact {IgnoreCondition:"all"} run data modify storage asset:artifact IgnoreCondition set value ["believe","specialcd","mp","localcd"]
# 処理用ストレージに移動
    execute unless data storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1] run function asset_manager:artifact/data/migrate
    $data modify storage asset:artifact Trigger set from storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)]
# 条件を満たしてなかったらtag削除
    # 信仰による制限
        execute unless data storage asset:artifact {IgnoreCondition:["believe"]} run function asset_manager:artifact/check/check_believe
        execute if entity @s[tag=CheckFailed] unless score @s BelieveLogCD matches 0.. run tellraw @s {"text":"現在の信仰では使えないようだ...","color":"red"}
        execute if entity @s[tag=CheckFailed] unless score @s BelieveLogCD matches 0.. run scoreboard players set @s BelieveLogCD 100
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # SpecialCooldownによる制限
        execute unless data storage asset:artifact {IgnoreCondition:["specialcd"]} run function asset_manager:artifact/check/check_special_cooldown
        execute if entity @s[tag=CheckFailed] unless score @s SpecialCDLogCD matches 0.. run tellraw @s {"text":"特殊クールダウンが終わっていません。","color":"red"}
        execute if entity @s[tag=CheckFailed] unless score @s SpecialCDLogCD matches 0.. run scoreboard players set @s SpecialCDLogCD 60
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # MP必要量による制限
        execute unless data storage asset:artifact {IgnoreCondition:["mp"]} run function asset_manager:artifact/check/check_mp
        execute if entity @s[tag=CheckFailed] unless score @s MPLogCD matches 0.. unless data storage asset:artifact Trigger{DisableMPMessage:true} run tellraw @s {"text":"MPが足りない！","color":"red"}
        execute if entity @s[tag=CheckFailed] unless score @s MPLogCD matches 0.. unless data storage asset:artifact Trigger{DisableMPMessage:true} run scoreboard players set @s MPLogCD 20
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # LocalCooldownによる制限
        execute unless data storage asset:artifact {IgnoreCondition:["localcd"]} run function asset_manager:artifact/check/check_local_cooldown/
        execute if entity @s[tag=CheckFailed] unless score @s LocalCDLogCD matches 0.. unless data storage asset:artifact Trigger{DisableCooldownMessage:true} run tellraw @s {"text":"クールダウンが終わっていません。","color":"red"}
        execute if entity @s[tag=CheckFailed] unless score @s LocalCDLogCD matches 0.. unless data storage asset:artifact Trigger{DisableCooldownMessage:true} run scoreboard players set @s LocalCDLogCD 20
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
# 条件を満たしてない && 使用回数が存在する && トリガーがitemUse ならば使用回数を減らす
    execute if entity @s[tag=!CanUsed] if data storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount if data storage asset:artifact Trigger{Trigger:"itemUse"} run function asset_manager:artifact/use/item/has_remain
# リセット
    data remove storage asset:artifact Trigger
    data remove storage asset:artifact TargetSlot
    data remove storage asset:artifact TargetDefaultSlot
    data remove storage asset:artifact TargetItems
    data remove storage asset:artifact IgnoreCondition
