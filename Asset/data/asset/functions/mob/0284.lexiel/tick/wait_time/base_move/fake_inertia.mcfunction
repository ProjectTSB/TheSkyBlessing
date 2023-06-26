#> asset:mob/0284.lexiel/tick/wait_time/base_move/fake_inertia
#
# 嘘慣性
#
# @within function
#   asset:mob/0284.lexiel/tick/wait_time/base_move/tick

# スコア減らす
    scoreboard players remove @s 7W.FakeInertia 1

# パーティクル
    execute positioned ~ ~-0.2 ~ run particle soul_fire_flame ^ ^ ^ 0 0 0 0 0 force @a[distance=..30]

# それっぽい移動
    execute if entity @s[scores={7W.FakeInertia=13..}] positioned ^ ^ ^0.8 run function asset:mob/0284.lexiel/tick/move/tereport_no_facing
    execute if entity @s[scores={7W.FakeInertia=9..12}] positioned ^ ^ ^0.5 run function asset:mob/0284.lexiel/tick/move/tereport_no_facing
    execute if entity @s[scores={7W.FakeInertia=5..8}] positioned ^ ^ ^0.3 run function asset:mob/0284.lexiel/tick/move/tereport_no_facing
    execute if entity @s[scores={7W.FakeInertia=1..4}] positioned ^ ^ ^0.1 run function asset:mob/0284.lexiel/tick/move/tereport_no_facing



# 終わったときプレイヤーを向く
    execute if entity @s[scores={7W.FakeInertia=0}] facing entity @p feet run tp @s ~ ~ ~ ~ ~
# スコアリセット
    scoreboard players reset @s[scores={7W.FakeInertia=0}] 7W.FakeInertia
