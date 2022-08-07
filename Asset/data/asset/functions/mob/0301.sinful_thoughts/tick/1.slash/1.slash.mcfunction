#> asset:mob/0301.sinful_thoughts/tick/1.slash/1.slash
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.skill_active

# 最初に実行
    execute if score @s 8D.Tick matches 0 run function asset:mob/0301.sinful_thoughts/tick/1.slash/2.first_tick

# 斬る
    execute if score @s 8D.Tick matches 3 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,181f,111f]
    execute if score @s 8D.Tick matches 6 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20264}
    execute if score @s 8D.Tick matches 6 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [235f,8f,92f]
    execute if score @s 8D.Tick matches 6 rotated ~ 0 positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/common/slash_damage
    execute if score @s 8D.Tick matches 6 rotated ~ 0 positioned ^ ^ ^2 rotated ~-60 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
# 斬る
    execute if score @s 8D.Tick matches 9 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20255}
    execute if score @s 8D.Tick matches 9 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [225f,0f,74f]
    execute if score @s 8D.Tick matches 12 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20264}
    execute if score @s 8D.Tick matches 12 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,0f,100f]
    execute if score @s 8D.Tick matches 12 rotated ~60 0 positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/common/slash_damage
    execute if score @s 8D.Tick matches 12 rotated ~60 0 positioned ^ ^ ^2 rotated ~60 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
# 斬る(強力)
    execute if score @s 8D.Tick matches 17 facing entity @p[gamemode=!spectator,distance=..50] eyes rotated ~ 0 run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute if score @s 8D.Tick matches 17 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,210f,36f]
    execute if score @s 8D.Tick matches 21 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [144f,205f,72f]
# タグをつけて一度しか攻撃が当たらないようにする
    execute if score @s 8D.Tick matches 21 rotated ~ 0 positioned ^ ^ ^2 run tag @a[distance=..2] add 8D.AttackHit
    execute if score @s 8D.Tick matches 21 rotated ~ 0 positioned ^ ^ ^4 run tag @a[distance=..2] add 8D.AttackHit
    execute if score @s 8D.Tick matches 21 run function asset:mob/0301.sinful_thoughts/tick/1.slash/3.powerful_slash_damage
    execute if score @s 8D.Tick matches 21 positioned ^ ^ ^5 run function asset:mob/0301.sinful_thoughts/tick/move/teleport

# ちょっとHPへってると特殊行動雷っぽいのおとす
    execute if score @s 8D.Tick matches 22 if entity @s[tag=8D.HPless75per] positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/common/thunder
    execute if score @s 8D.Tick matches 24 if entity @s[tag=8D.HPless75per] positioned ^ ^ ^3 run function asset:mob/0301.sinful_thoughts/tick/common/thunder
    execute if score @s 8D.Tick matches 26 if entity @s[tag=8D.HPless75per] positioned ^ ^ ^5 run function asset:mob/0301.sinful_thoughts/tick/common/thunder


# 確率でそのままジャンプする(ただしブロックに埋まっていない場合)
    execute if score @s 8D.Tick matches 26 if block ~ ~ ~ #lib:no_collision if predicate lib:random_pass_per/50 run function asset:mob/0301.sinful_thoughts/tick/1.slash/4.go_to_jump
# リセット
    execute if score @s 8D.Tick matches 30 run function asset:mob/0301.sinful_thoughts/tick/reset