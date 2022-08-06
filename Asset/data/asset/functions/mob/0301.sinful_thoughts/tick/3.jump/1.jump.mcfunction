#> asset:mob/0301.sinful_thoughts/tick/3.jump/1.jump
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.skill_active

# 最初に実行
    execute if score @s 8D.Tick matches 0 run function asset:mob/0301.sinful_thoughts/tick/3.jump/2.first_tick

# 飛び上がる
    execute if score @s 8D.Tick matches 1 positioned ~ ~2 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute if score @s 8D.Tick matches 3 positioned ~ ~1 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute if score @s 8D.Tick matches 5 positioned ~ ~0.5 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute if score @s 8D.Tick matches 7 positioned ~ ~0.25 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute if score @s 8D.Tick matches 9 positioned ~ ~0.175 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport


# 飛びかかる
    execute if score @s 8D.Tick matches 10 at @s facing entity @p feet run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute if score @s 8D.Tick matches 15..19 at @s run function asset:mob/0301.sinful_thoughts/tick/3.jump/3.pounce
# 斬りつけ
    execute if score @s 8D.Tick matches 20 at @s run function asset:mob/0301.sinful_thoughts/tick/3.jump/4.slash
# リセット
    execute if score @s 8D.Tick matches 40 run function asset:mob/0301.sinful_thoughts/tick/reset

# 発砲
# プレイヤーを見る
    execute if score @s 8D.Tick matches 1005 facing entity @p[gamemode=!spectator,distance=..100] eyes rotated ~90 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport

# 腕かえる
    execute if score @s 8D.Tick matches 1005 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [270f,270f,0f]
    execute if score @s 8D.Tick matches 1005 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20258}

# ダメージ
    execute if score @s 8D.Tick matches 1010 rotated ~-90 0 positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/3.jump/5.gun
# リセット
    execute if score @s 8D.Tick matches 1040 run function asset:mob/0301.sinful_thoughts/tick/reset