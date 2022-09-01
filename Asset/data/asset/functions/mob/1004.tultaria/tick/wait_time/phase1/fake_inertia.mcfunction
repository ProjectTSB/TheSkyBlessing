#> asset:mob/1004.tultaria/tick/wait_time/phase1/fake_inertia
#
# 嘘慣性
#
# @within function asset:mob/1004.tultaria/tick/wait_time/phase1/tick

# スコア減らす
    scoreboard players remove @s RW.FakeInertia 1

# パーティクル
    execute positioned ~ ~-0.2 ~ run particle soul_fire_flame ^ ^ ^ 0 0 0 0 0 force @a[distance=..30]

# それっぽい移動
    execute if entity @s[scores={RW.FakeInertia=13..}] run tp @s ^ ^ ^0.8
    execute if entity @s[scores={RW.FakeInertia=9..12}] run tp @s ^ ^ ^0.5
    execute if entity @s[scores={RW.FakeInertia=5..8}] run tp @s ^ ^ ^0.3
    execute if entity @s[scores={RW.FakeInertia=1..4}] run tp @s ^ ^ ^0.1
    execute if entity @s[scores={RW.FakeInertia=0}] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# 頭のモデル
    execute if entity @s[tag=!RW.InAction,scores={RW.FakeInertia=0}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20077}

# スコアリセット
    scoreboard players reset @s[scores={RW.FakeInertia=0}] RW.FakeInertia
