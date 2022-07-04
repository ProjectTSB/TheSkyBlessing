#> asset:mob/0120.convict/tick/3.slash/1.slash
#
#
#
# @within function asset:mob/0120.convict/tick/4.skill_active

# 最初に実行
    execute if score @s 3C.Tick matches 0 run function asset:mob/0120.convict/tick/3.slash/2.first_tick

# ポーズ変えるの
    execute if score @s 3C.Tick matches 35 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [340f,0f,88f]
# 攻撃
    execute if score @s 3C.Tick matches 35 rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/particle/particle_3
    execute if score @s 3C.Tick matches 35 rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/3.slash_attack1
# テレポートする
    execute if score @s 3C.Tick matches 35 facing entity @p eyes rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0120.convict/tick/move/teleport

# ポーズ変えるの
    execute if score @s 3C.Tick matches 37 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,0f]
    execute if score @s 3C.Tick matches 37 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [225f,0f,74f]
# 攻撃
    execute if score @s 3C.Tick matches 39 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,0f,74f]
    execute if score @s 3C.Tick matches 39 rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/particle/particle_3
    execute if score @s 3C.Tick matches 39 rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/3.slash_attack1
# テレポートする
    execute if score @s 3C.Tick matches 39 facing entity @p eyes rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0120.convict/tick/move/teleport

# ポーズ変えるの
    execute if score @s 3C.Tick matches 41 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,177f,36f]
# 攻撃
    execute if score @s 3C.Tick matches 43 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [346f,337f,253f]
    execute if score @s 3C.Tick matches 43 rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/particle/particle_2
    execute if score @s 3C.Tick matches 43 rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/3.slash_attack1
# テレポートする
    execute if score @s 3C.Tick matches 43 facing entity @p eyes rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0120.convict/tick/move/teleport

# リセット
    execute if score @s 3C.Tick matches 130 run function asset:mob/0120.convict/tick/reset


# 上の攻撃で一度でもヒットしてる場合ここへ飛ぶ
# プレイヤーを捕まえる
    execute if score @s 3C.Tick matches 1000.. rotated ~ 0 positioned ^ ^ ^1 as @a[distance=..2] at @s run tp @s @s
# プレイヤーの眼の前にTP
    execute if score @s 3C.Tick matches 1005 at @p rotated ~ 0 positioned ^ ^ ^1.2 facing entity @p eyes run function asset:mob/0120.convict/tick/move/teleport
# ポーズを変える
    execute if score @s 3C.Tick matches 1007 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [183f,28f,0f]
    execute if score @s 3C.Tick matches 1007 run data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [177f,336f,0f]
# 攻撃
    execute if score @s 3C.Tick matches 1015 run function asset:mob/0120.convict/tick/3.slash/4.slash_attack2

# リセット
    execute if score @s 3C.Tick matches 1050.. run function asset:mob/0120.convict/tick/reset