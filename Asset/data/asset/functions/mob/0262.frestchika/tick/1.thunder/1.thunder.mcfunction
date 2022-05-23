#> asset:mob/0262.frestchika/tick/1.thunder/1.thunder
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.skill_active

# 最初に実行するの
    execute if score @s 7A.Tick matches 0 run function asset:mob/0262.frestchika/tick/1.thunder/2.first_tick

# 腕を変える
    execute if score @s 7A.Tick matches 10 if entity @s run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [265f,340f,0f]

# 雷召喚
    execute if score @s 7A.Tick matches 15 rotated ~ 0 positioned ^0 ^ ^-5 run function asset:mob/0262.frestchika/tick/1.thunder/3.thunder_summon
    execute if score @s 7A.Tick matches 17 rotated ~ 0 positioned ^4.33013 ^ ^-2.5 run function asset:mob/0262.frestchika/tick/1.thunder/3.thunder_summon
    execute if score @s 7A.Tick matches 19 rotated ~ 0 positioned ^4.33013 ^ ^2.5 run function asset:mob/0262.frestchika/tick/1.thunder/3.thunder_summon
    execute if score @s 7A.Tick matches 21 rotated ~ 0 positioned ^0 ^ ^5 run function asset:mob/0262.frestchika/tick/1.thunder/3.thunder_summon
    execute if score @s 7A.Tick matches 23 rotated ~ 0 positioned ^-4.33013 ^ ^2.5 run function asset:mob/0262.frestchika/tick/1.thunder/3.thunder_summon
    execute if score @s 7A.Tick matches 25 rotated ~ 0 positioned ^-4.33013 ^ ^-2.5 run function asset:mob/0262.frestchika/tick/1.thunder/3.thunder_summon

# リセット
    execute if score @s 7A.Tick matches 30 run function asset:mob/0262.frestchika/tick/reset