#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/shoot
#
# ショット発射！
#
# @within asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/main

# スコアリセット
    scoreboard players reset @s[scores={87.Tick=20..}] 87.Tick

# ショット役召喚
    execute if entity @s[tag=87.Normal] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["87.ShotInit","87.ShotNormal"]}
    execute if entity @s[tag=87.Fire] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["87.ShotInit","87.ShotFire"]}
    execute if entity @s[tag=87.Water] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["87.ShotInit","87.ShotWater"]}
    execute if entity @s[tag=87.Thunder] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["87.ShotInit","87.ShotThunder"]}

# ショットのInit発動
    execute as @e[type=armor_stand,tag=87.ShotInit] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/1.init

# scheduleループ開始
    function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/2.tick

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# 自身は死ぬ
#    tp @s ~ -400 ~
#    kill @s