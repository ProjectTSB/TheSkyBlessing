#> asset:mob/0301.sinful_thoughts/tick/1.axe/1.axe
#
# 地面に斧を叩きつけて進む波動
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.skill_active

# 最初に実行
    execute if score @s 8D.Tick matches 0 run function asset:mob/0301.sinful_thoughts/tick/1.axe/2.first_tick

# 少し置いて発動
    execute if score @s 8D.Tick matches 15 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [330f,0f,0f]
    execute if score @s 8D.Tick matches 15 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [330f,0f,0f]

# 衝撃波
    execute if score @s 8D.Tick matches 15 rotated ~ 0 positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/1.axe/3.impact
    execute if score @s 8D.Tick matches 17 rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0301.sinful_thoughts/tick/1.axe/3.impact
    execute if score @s 8D.Tick matches 19 rotated ~ 0 positioned ^ ^ ^5 run function asset:mob/0301.sinful_thoughts/tick/1.axe/3.impact
    execute if score @s 8D.Tick matches 21 rotated ~ 0 positioned ^ ^ ^7 run function asset:mob/0301.sinful_thoughts/tick/1.axe/3.impact
    execute if score @s 8D.Tick matches 23 rotated ~ 0 positioned ^ ^ ^9 run function asset:mob/0301.sinful_thoughts/tick/1.axe/3.impact
    execute if score @s 8D.Tick matches 25 rotated ~ 0 positioned ^ ^ ^11 run function asset:mob/0301.sinful_thoughts/tick/1.axe/3.impact

    execute if score @s 8D.Tick matches 45 run function asset:mob/0301.sinful_thoughts/tick/reset