#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.4.fairy_shoot
#
# ショット発射！
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.3.fairy_main

# スコアリセット
    scoreboard players reset @s[scores={295Fa.Tick=20..}] 295Fa.Tick

# ショット役召喚
    execute if entity @s[tag=295Fa.Normal] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["295Fa.ShotInit","295Fa.ShotNormal"]}
    execute if entity @s[tag=295Fa.Fire] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["295Fa.ShotInit","295Fa.ShotFire"]}
    execute if entity @s[tag=295Fa.Water] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["295Fa.ShotInit","295Fa.ShotWater"]}
    execute if entity @s[tag=295Fa.Thunder] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["295Fa.ShotInit","295Fa.ShotThunder"]}

# ショットのInit発動
    execute as @e[type=armor_stand,tag=295Fa.ShotInit] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.2.shot_init

# scheduleループ開始
    function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.1.shot_tick

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# 自身は死ぬ
#    tp @s ~ -400 ~
#    kill @s