#> asset:mob/0216.gray_guardian/tick/1.skill_melee/1.skill_melee
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_active

# 最初に実行
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/1.skill_melee/2.first_tick

# テレポート
    execute if score @s 60.Tick matches 20 rotated ~70 ~0 positioned ~ ~1 ~ run function asset:mob/0216.gray_guardian/tick/1.skill_melee/vfx1
    execute if score @s 60.Tick matches 20 rotated ~70 ~0 positioned ^ ^ ^6 run function asset:mob/0216.gray_guardian/tick/move/teleport

# テレポート
    execute if score @s 60.Tick matches 23 rotated ~-140 ~0 positioned ~ ~1 ~ run function asset:mob/0216.gray_guardian/tick/1.skill_melee/vfx2
    execute if score @s 60.Tick matches 23 rotated ~-140 ~0 positioned ^ ^ ^12 run function asset:mob/0216.gray_guardian/tick/move/teleport

# 向き転換
    execute if score @s 60.Tick matches 28 facing entity @p[distance=..100] feet run function asset:mob/0216.gray_guardian/tick/move/teleport
# 演出
    execute if score @s 60.Tick matches 28 run function asset:mob/0216.gray_guardian/tick/1.skill_melee/vfx3
# もう一回突進
    execute if score @s 60.Tick matches 28..35 positioned ^ ^ ^1 run function asset:mob/0216.gray_guardian/tick/1.skill_melee/3.tackle

# 当たらなかったらスコアを飛ばしてリセットへ
    execute if score @s 60.Tick matches 50 run scoreboard players set @s 60.Tick 2000




# ポーズ
    execute if score @s 60.Tick matches 1000 run data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [38f,189f,241f]
    execute if score @s 60.Tick matches 1010 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20126}
    execute if score @s 60.Tick matches 1010 run data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [213f,175f,241f]

# 振る
    execute if score @s 60.Tick matches 1010 positioned ^ ^ ^1.25 run function asset:mob/0216.gray_guardian/tick/1.skill_melee/4.slash

# リセット
    execute if score @s 60.Tick matches 1030.. run function asset:mob/0216.gray_guardian/tick/reset