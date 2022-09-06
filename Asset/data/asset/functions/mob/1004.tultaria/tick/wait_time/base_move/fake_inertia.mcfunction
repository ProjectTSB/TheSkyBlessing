#> asset:mob/1004.tultaria/tick/wait_time/base_move/fake_inertia
#
# 嘘慣性
#
# @within function asset:mob/1004.tultaria/tick/wait_time/base_move/tick

# スコア減らす
    scoreboard players remove @s RW.FakeInertia 1

# パーティクル
    execute positioned ~ ~-0.2 ~ run particle soul_fire_flame ^ ^ ^ 0 0 0 0 0 force @a[distance=..30]

# それっぽい移動
    execute if entity @s[scores={RW.FakeInertia=13..}] positioned ^ ^ ^0.8 run function asset:mob/1004.tultaria/tick/move/tereport
    execute if entity @s[scores={RW.FakeInertia=9..12}] positioned ^ ^ ^0.5 run function asset:mob/1004.tultaria/tick/move/tereport
    execute if entity @s[scores={RW.FakeInertia=5..8}] positioned ^ ^ ^0.3 run function asset:mob/1004.tultaria/tick/move/tereport
    execute if entity @s[scores={RW.FakeInertia=1..4}] positioned ^ ^ ^0.1 run function asset:mob/1004.tultaria/tick/move/tereport

# 頭のモデル
    execute if entity @s[tag=!RW.InAction,scores={RW.FakeInertia=0}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20077}

# スコアリセット
    scoreboard players reset @s[scores={RW.FakeInertia=0}] RW.FakeInertia
