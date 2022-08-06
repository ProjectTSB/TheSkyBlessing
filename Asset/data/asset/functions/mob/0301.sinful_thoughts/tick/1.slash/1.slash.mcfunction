#> asset:mob/0301.sinful_thoughts/tick/1.slash/1.slash
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.skill_active

# 最初に実行
    execute if score @s 8D.Tick matches 0 run function asset:mob/0301.sinful_thoughts/tick/1.slash/2.first_tick

# 斬る
    execute if score @s 8D.Tick matches 3 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,181f,111f]
    execute if score @s 8D.Tick matches 10 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20264}
    execute if score @s 8D.Tick matches 10 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [235f,8f,92f]
    execute if score @s 8D.Tick matches 10 rotated ~ 0 positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/common/slash_damage
    execute if score @s 8D.Tick matches 10 rotated ~ 0 positioned ^ ^ ^2 rotated ~-60 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
# 斬る
    execute if score @s 8D.Tick matches 13 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20255}
    execute if score @s 8D.Tick matches 13 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [225f,0f,74f]
    execute if score @s 8D.Tick matches 20 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20264}
    execute if score @s 8D.Tick matches 20 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,0f,100f]
    execute if score @s 8D.Tick matches 20 rotated ~60 0 positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/common/slash_damage
    execute if score @s 8D.Tick matches 20 rotated ~60 0 positioned ^ ^ ^2 rotated ~60 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
# 斬る(強力)
    execute if score @s 8D.Tick matches 25 facing entity @p[gamemode=!spectator,distance=..50] eyes rotated ~ 0 run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute if score @s 8D.Tick matches 25 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,210f,36f]
    execute if score @s 8D.Tick matches 35 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [144f,205f,72f]
# タグをつけて一度しか攻撃が当たらないようにする
    execute if score @s 8D.Tick matches 35 rotated ~ 0 positioned ^ ^ ^2 run tag @a[distance=..2] add 8D.AttackHit
    execute if score @s 8D.Tick matches 35 rotated ~ 0 positioned ^ ^ ^4 run tag @a[distance=..2] add 8D.AttackHit
    execute if score @s 8D.Tick matches 35 run function asset:mob/0301.sinful_thoughts/tick/1.slash/3.powerful_slash_damage
    execute if score @s 8D.Tick matches 35 positioned ^ ^ ^5 run function asset:mob/0301.sinful_thoughts/tick/move/teleport

# リセット
    execute if score @s 8D.Tick matches 130 run function asset:mob/0301.sinful_thoughts/tick/reset