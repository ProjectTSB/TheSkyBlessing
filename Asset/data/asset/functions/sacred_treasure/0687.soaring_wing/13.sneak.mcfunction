    #> asset:sacred_treasure/0687.soaring_wing/13.sneak
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/12.sneak_trigger

# ブロックの上
    execute unless block ~ ~-0.01 ~ #lib:no_collision run function asset:sacred_treasure/0687.soaring_wing/14.sneak_on_block

# no_collisionの上ならスニークスコアをリセット
    execute if block ~ ~-0.01 ~ #lib:no_collision run scoreboard players reset @s J3.SneakTime