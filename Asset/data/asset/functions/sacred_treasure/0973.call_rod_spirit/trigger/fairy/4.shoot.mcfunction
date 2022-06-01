#> asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/4.shoot
#
# ショット発射！
#
# @within asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/3.main

# タグ付与
    tag @s add R1.This

# ショットを撃つ
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["R1.ShotInit"],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20233,CustomPotionColor:16711680}}}]}

# カウントを増やす
    scoreboard players add @s R1.CTCount 1

# ショットのInit発動
    execute as @e[type=armor_stand,tag=R1.ShotInit] at @s run function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/1.init

# scheduleループ開始
    function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/2.tick

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset @s R1.Tick
    tag @s remove R1.This