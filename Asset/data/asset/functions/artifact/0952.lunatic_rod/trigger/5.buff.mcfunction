#> asset:artifact/0952.lunatic_rod/trigger/5.buff
#
# 自身に魔法バフを付与
#
# @within function asset:artifact/0952.lunatic_rod/trigger/3.main

# 魔法バフ15%
    data modify storage api: Argument.UUID set value [I;1,1,952,0]
    data modify storage api: Argument.Amount set value 0.10
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/magic/add

# 効果時間設定
    scoreboard players set @s QG.EffectTime 300

# スケジュールループ開始
    schedule function asset:artifact/0952.lunatic_rod/trigger/effect/loop 1t replace
