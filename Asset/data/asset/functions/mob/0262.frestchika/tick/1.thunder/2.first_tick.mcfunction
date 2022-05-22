#> asset:mob/0262.frestchika/tick/1.thunder/2.first_tick
#
#
#
# @within function asset:mob/0262.frestchika/tick/1.thunder/1.thunder

# 腕を変える
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [177f,0f,0f]
# パーティクルを出す
    function asset:mob/0262.frestchika/tick/particle/thunder_particle
    execute rotated ~ 0 run function asset:mob/0262.frestchika/tick/particle/thunder_particle2

# ヒート値を上げる
    scoreboard players add @s 7A.Heat 1

# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 0.3