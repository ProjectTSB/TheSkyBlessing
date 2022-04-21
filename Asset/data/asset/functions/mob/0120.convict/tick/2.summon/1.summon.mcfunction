#> asset:mob/0120.convict/tick/2.summon/1.summon
#
#
#
# @within function asset:mob/0120.convict/tick/4.skill_active

# 最初に実行
    execute if score @s 3C.Tick matches 0 run function asset:mob/0120.convict/tick/2.summon/2.first_tick

# 頭ガクガク
    execute if score @s 3C.Tick matches 5 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,50f]
    execute if score @s 3C.Tick matches 6 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,310f]
    execute if score @s 3C.Tick matches 7 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,40f]
    execute if score @s 3C.Tick matches 8 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,320f]
    execute if score @s 3C.Tick matches 9 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,30f]
    execute if score @s 3C.Tick matches 10 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,330f]
    execute if score @s 3C.Tick matches 11 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,20f]
    execute if score @s 3C.Tick matches 12 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,340f]
    execute if score @s 3C.Tick matches 13 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,10f]
    execute if score @s 3C.Tick matches 14 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,350f]
    execute if score @s 3C.Tick matches 15 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
# 召喚
    execute if score @s 3C.Tick matches 15 rotated ~ 0 positioned ^1.73205 ^ ^1 run function asset:mob/0120.convict/tick/2.summon/3.enemy_summon
    execute if score @s 3C.Tick matches 20 rotated ~ 0 positioned ^-1.73205 ^ ^1 run function asset:mob/0120.convict/tick/2.summon/3.enemy_summon

# リセット
    execute if score @s 3C.Tick matches 55 run function asset:mob/0120.convict/tick/reset