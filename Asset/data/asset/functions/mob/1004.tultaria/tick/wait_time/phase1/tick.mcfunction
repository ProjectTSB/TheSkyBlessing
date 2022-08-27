#> asset:mob/1004.tultaria/tick/wait_time/phase1/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# スコア加算
    scoreboard players add @s[tag=!RW.InAction] RW.Tick 1

# ワープ
    execute if score @s RW.Tick matches 60 at @r run function asset:mob/1004.tultaria/tick/move/teleport/place_marker
    execute if score @s RW.Tick matches 60 run scoreboard players reset @s RW.Tick

# こっち向く
    execute unless entity @s[scores={RW.FakeInertia=0..}] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# モデルの向き
    execute as @e[type=armor_stand,tag=RW.ArmorStand,distance=..2] facing entity @p eyes run tp @s ~ ~ ~ ~-45 ~

# 移動タグ付きなら移動
    execute if entity @s[tag=RW.InAction] facing entity @e[type=marker,tag=RW.TeleportMarker] feet run function asset:mob/1004.tultaria/tick/move/teleport/move_to_marker

# 嘘慣性を解決
    scoreboard players remove @s[scores={RW.FakeInertia=1..}] RW.FakeInertia 1
    execute if entity @s[scores={RW.FakeInertia=0..}] positioned ~ ~-0.2 ~ run particle soul_fire_flame ^ ^ ^ 0 0 0 0 0 force @a[distance=..30]
    execute if entity @s[scores={RW.FakeInertia=13..}] run tp @s ^ ^ ^0.8
    execute if entity @s[scores={RW.FakeInertia=9..12}] run tp @s ^ ^ ^0.5
    execute if entity @s[scores={RW.FakeInertia=5..8}] run tp @s ^ ^ ^0.3
    execute if entity @s[scores={RW.FakeInertia=1..4}] run tp @s ^ ^ ^0.1
    execute if entity @s[scores={RW.FakeInertia=0}] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    scoreboard players reset @s[scores={RW.FakeInertia=0}] RW.FakeInertia

