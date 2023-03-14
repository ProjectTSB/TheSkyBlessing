#> asset:artifact/0973.call_rod_spirit/trigger/fairy/4.shoot
#
# ショット発射！
#
# @within asset:artifact/0973.call_rod_spirit/trigger/fairy/3.main

# タグ付与
    tag @s add R1.IDCopyBase

# ショットを撃つ
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["R1.ShotInit"],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20234,CustomPotionColor:10274303}}}]}

# カウントを増やす
    scoreboard players add @s R1.ShotCount 1

# ショットのInit発動
    execute as @e[type=armor_stand,tag=R1.ShotInit,distance=..0.01] at @s run function asset:artifact/0973.call_rod_spirit/trigger/shot/1.init

# scheduleループ開始
    schedule function asset:artifact/0973.call_rod_spirit/trigger/shot/2.tick 1t

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# リセット
    scoreboard players reset @s R1.Tick

    tag @s remove R1.IDCopyBase