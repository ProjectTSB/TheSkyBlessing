#> asset:mob/0129.lexiel/tick/skill_magic/1.skill_magic
#
# 魔法攻撃。3回撃つ
#
# @within function asset:mob/0129.lexiel/tick/2.3.skill_active
# ポーズ
    execute if score @s 3L.Tick matches 0 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20042}
    execute if score @s 3L.Tick matches 0 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon with stone{CustomModelData:20035}
    execute if score @s 3L.Tick matches 0 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [267f,28f,0f]
    execute if score @s 3L.Tick matches 0 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [267f,334f,0f]

# 攻撃
    execute if score @s 3L.Tick matches 15 positioned ~ ~1.4 ~ run function asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet
# タグを消す
    tag @s remove Landing
# プレイヤーを向く
    execute if score @s 3L.Tick matches 15 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0129.lexiel/tick/move/teleport

# 攻撃二回目
    execute if score @s 3L.Tick matches 25 positioned ~ ~1.4 ~ run function asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet
# タグを消す
    tag @s remove Landing
# プレイヤーを向く
    execute if score @s 3L.Tick matches 25 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0129.lexiel/tick/move/teleport

# 攻撃三回目
    execute if score @s 3L.Tick matches 35 positioned ~ ~1.4 ~ run function asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet
# タグを消す
    tag @s remove Landing


# リセット
    execute if score @s 3L.Tick matches 45 run function asset:mob/0129.lexiel/tick/reset