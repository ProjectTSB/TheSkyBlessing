#> asset:artifact/0295.call_elemental_familiar/trigger/fairy/4.shoot
#
# ショット発射！
#
# @within asset:artifact/0295.call_elemental_familiar/trigger/fairy/3.main


# タグ付与
    tag @s add 87.IDCopyBase

# 属性弾を放つ 無属性弾は現状撃たない
    execute if entity @s[tag=87.FamiliarFire] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["87.ShotInit","87.ShotFire"]}
    execute if entity @s[tag=87.FamiliarThunder] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["87.ShotInit","87.ShotThunder"]}
    execute if entity @s[tag=87.FamiliarWater] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["87.ShotInit","87.ShotWater"]}

# ショットのInit発動
    execute as @e[type=armor_stand,tag=87.ShotInit,distance=..0.01] at @s run function asset:artifact/0295.call_elemental_familiar/trigger/shot/1.init

# scheduleループ開始
    schedule function asset:artifact/0295.call_elemental_familiar/trigger/shot/2.tick 1t replace

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# リセット
    scoreboard players reset @s 87.Tick
    tag @s remove 87.IDCopyBase