#> asset:mob/0284.lexiel/tick/skill/spin/1.spin
#
#
#
# @within function asset:mob/0284.lexiel/tick/4.skill_active

    execute if score @s 7W.Tick matches 0 as @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0284.lexiel/tick/skill/spin/2.first_tick

    execute if score @s 7W.Tick matches 0..30 rotated 0 0 positioned ~ ~1.5 ~ run function asset:mob/0284.lexiel/tick/particle/particle3

    execute if score @s 7W.Tick matches 30 as @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] run data modify entity @s Pose.RightArm set value [185f,183f,304f]
    execute if score @s 7W.Tick matches 30 as @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~40 ~
    execute if score @s 7W.Tick matches 30 as @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] run item replace entity @s weapon with stick{CustomModelData:20297}
    execute if score @s 7W.Tick matches 30 as @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] run item replace entity @s armor.head with stick{CustomModelData:20291}
    execute if score @s 7W.Tick matches 30 rotated ~90 -25 positioned ~ ~1 ~ run function asset:mob/0284.lexiel/tick/particle/particle2

    execute if score @s 7W.Tick matches 50 run function asset:mob/0284.lexiel/tick/reset