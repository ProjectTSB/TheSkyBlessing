#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/end
#
# 終了処理
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/main

# リセット
    data modify storage api: Argument.UUID set value [I;1,1,730,0]
    function api:player_modifier/attack/water/remove
    tag @s remove KA.Buff
    tag @s remove KA.RejoinTarget
    scoreboard players reset @s KA.Tick