#> asset:mob/0022.red_knight/tick/wait_time/base_move/fake_inertia
#
# 嘘慣性
#
# @within function asset:mob/0022.red_knight/tick/wait_time/base_move/tick

# スコア減らす
    scoreboard players remove @s M.FakeInertia 1

# それっぽい移動
    execute if entity @s[scores={M.FakeInertia=13..}] positioned ^ ^ ^1 run function asset:mob/0022.red_knight/tick/move/tp_nofacing
    execute if entity @s[scores={M.FakeInertia=9..12}] positioned ^ ^ ^0.7 run function asset:mob/0022.red_knight/tick/move/tp_nofacing
    execute if entity @s[scores={M.FakeInertia=5..8}] positioned ^ ^ ^0.3 run function asset:mob/0022.red_knight/tick/move/tp_nofacing
    execute if entity @s[scores={M.FakeInertia=1..4}] positioned ^ ^ ^0.1 run function asset:mob/0022.red_knight/tick/move/tp_nofacing

# スコアリセット
    scoreboard players reset @s[scores={M.FakeInertia=0}] M.FakeInertia