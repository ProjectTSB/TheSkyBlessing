#> asset:mob/0262.frestchika/tick/3.melee2/1.melee2
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.skill_active

# 最初に実行するの
    execute if score @s 7A.Tick matches 0 run function asset:mob/0262.frestchika/tick/3.melee2/2.first_tick


# 腕変える
    execute if score @s 7A.Tick matches 10 run item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20149}
    execute if score @s 7A.Tick matches 10 run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [342f,217f,0f]
    execute if score @s 7A.Tick matches 10 run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [326f,0f,324f]
# 数m先にTPする
    execute if score @s 7A.Tick matches 10 positioned ^ ^ ^10 run function asset:mob/0262.frestchika/tick/move/tereport
# 少し間を置いて雷を連続で出す
    execute if score @s 7A.Tick matches 17 rotated ~ 0 positioned ^ ^ ^-10 run function asset:mob/0262.frestchika/tick/3.melee2/3.thunder
    execute if score @s 7A.Tick matches 18 rotated ~ 0 positioned ^ ^ ^-8 run function asset:mob/0262.frestchika/tick/3.melee2/3.thunder
    execute if score @s 7A.Tick matches 19 rotated ~ 0 positioned ^ ^ ^-6 run function asset:mob/0262.frestchika/tick/3.melee2/3.thunder
    execute if score @s 7A.Tick matches 20 rotated ~ 0 positioned ^ ^ ^-4 run function asset:mob/0262.frestchika/tick/3.melee2/3.thunder
    execute if score @s 7A.Tick matches 21 rotated ~ 0 positioned ^ ^ ^-2 run function asset:mob/0262.frestchika/tick/3.melee2/3.thunder
# リセット

execute if score @s 7A.Tick matches 100 at @s run function asset:mob/0262.frestchika/tick/reset