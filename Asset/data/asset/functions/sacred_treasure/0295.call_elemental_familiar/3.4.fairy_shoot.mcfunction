#> asset:sacred_treasure/0295.call_elemental_familiar/3.4.fairy_shoot
#
# ショット発射！
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/3.3.fairy_main

# ショット役召喚
    execute if entity @s[tag=295Fa.Normal] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["295Fa.ShotInit","295Fa.ShotNormal"]}
    execute if entity @s[tag=295Fa.Fire] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["295Fa.ShotInit","295Fa.ShotFire"]}
    execute if entity @s[tag=295Fa.Water] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["295Fa.ShotInit","295Fa.ShotWater"]}
    execute if entity @s[tag=295Fa.Thunder] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["295Fa.ShotInit","295Fa.ShotThunder"]}

# scheduleループ開始
    function asset:sacred_treasure/0295.call_elemental_familiar/3.1.1.shot_tick

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt player @a ~ ~ ~ 2 2
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 2
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 2

# 自身は死ぬ
#    tp @s ~ -400 ~
#    kill @s