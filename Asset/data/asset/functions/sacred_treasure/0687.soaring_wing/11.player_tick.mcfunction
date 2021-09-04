#> asset:sacred_treasure/0687.soaring_wing/11.player_tick
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/10.schedule_loop

# 飛行時以外を検知するTagを付与付与
    execute if entity @s[tag=!J3.IsNotFlying] run tag @s add J3.IsNotFlying

# 飛行時ではない時に3.5ブロック下まで当たり判定がないブロックではない場合低速落下を得る 要約すると落下ダメージ無効
    execute if entity @s[tag=J3.IsNotFlying] if block ~ ~-0.5 ~ #lib:no_collision if block ~ ~-1.5 ~ #lib:no_collision if block ~ ~-2.5 ~ #lib:no_collision if block ~ ~-3.5 ~ #lib:no_collision run effect give @s slow_falling 1 0 true

# スニーク時以外スニーク時間を計測するスコアをリセット
    execute if score @s J3.SneakTime matches 1.. unless predicate lib:is_sneaking run scoreboard players reset @s J3.SneakTime