#> asset:sacred_treasure/0952.lunatic_rod/trigger/effect/reset
#
# バフの効果のリセット
#
# @within function asset:sacred_treasure/0952.lunatic_rod/trigger/effect/main

# 魔法バフの削除
    data modify storage api: Argument.UUID set value [I;1,1,952,0]
    function api:player_modifier/attack/magic/remove

# スコアのリセット
    scoreboard players reset @s QG.EffectTime