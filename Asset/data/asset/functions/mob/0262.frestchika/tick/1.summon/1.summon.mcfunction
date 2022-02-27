#> asset:mob/0262.frestchika/tick/1.summon/1.summon
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.skill_active

# 最初に実行するの
    execute if score @s 7A.Tick matches 0 run function asset:mob/0262.frestchika/tick/1.summon/2.first_tick

# レーザーアイ召喚
    execute if score @s 7A.Tick matches 15 run function asset:mob/1004.tultaria/tick/1.melee_attack/3.slash


# レーザーアイMK2(マスターはいったら変えます)


# 腕を変える
    execute if score @s 7A.Tick matches 20 if entity @s run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [215f,0f,94f]