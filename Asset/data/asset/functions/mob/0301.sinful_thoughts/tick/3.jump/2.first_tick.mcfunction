#> asset:mob/0301.sinful_thoughts/tick/3.jump/2.first_tick
#
#
#
# @within function
#       asset:mob/0301.sinful_thoughts/tick/1.slash/4.go_to_jump
#       asset:mob/0301.sinful_thoughts/tick/3.jump/1.jump

# プレイヤーを見る
    execute at @s facing entity @p eyes run function asset:mob/0301.sinful_thoughts/tick/move/teleport

# 腕かえる
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [10f,32f,330f]
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [150f,0f,10f]

# 頭変える
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20259}
# 演出
    particle cloud ~ ~ ~ 0.3 0.3 0.3 0.8 30 normal
    playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1

