#> asset:mob/1004.tultaria/tick/wait_time/phase1/fake_inertia
#
# 嘘慣性
#
# @within function asset:mob/1004.tultaria/tick/wait_time/phase1/tick

# スコア減らす
    scoreboard players remove @s RW.FakeInertia 1

# パーティクル
    execute positioned ~ ~-0.2 ~ run particle soul_fire_flame ^ ^ ^ 0 0 0 0 0 force @a[distance=..30]

    execute if entity @s[scores={RW.FakeInertia=13..}] run tp @s ^ ^ ^0.8
    execute if entity @s[scores={RW.FakeInertia=9..12}] run tp @s ^ ^ ^0.5
    execute if entity @s[scores={RW.FakeInertia=5..8}] run tp @s ^ ^ ^0.3
    execute if entity @s[scores={RW.FakeInertia=1..4}] run tp @s ^ ^ ^0.1
    execute if entity @s[scores={RW.FakeInertia=0}] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    scoreboard players reset @s[scores={RW.FakeInertia=0}] RW.FakeInertia
