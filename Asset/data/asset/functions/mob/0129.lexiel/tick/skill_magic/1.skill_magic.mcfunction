#> asset:mob/0129.lexiel/tick/skill_magic/1.skill_magic
#
# 魔法攻撃。3回撃つ
#
# @within function asset:mob/0129.lexiel/tick/2.3.skill_active
# ポーズ
    execute if score @s 3L.Tick matches 85 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20042}
    execute if score @s 3L.Tick matches 85 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon with stone{CustomModelData:20035}
    execute if score @s 3L.Tick matches 85 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [267f,28f,0f]
    execute if score @s 3L.Tick matches 85 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [267f,334f,0f]

# 攻撃
    execute if score @s 3L.Tick matches 100 positioned ~ ~1.4 ~ run function asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet
# タグを消す
    tag @s remove Landing
# プレイヤーを向く
    execute if score @s 3L.Tick matches 100 run function asset:mob/0129.lexiel/tick/skill_magic/4.skill_magic_look_player

# 攻撃二回目
    execute if score @s 3L.Tick matches 110 positioned ~ ~1.4 ~ run function asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet
# タグを消す
    tag @s remove Landing
# プレイヤーを向く
    execute if score @s 3L.Tick matches 110 run function asset:mob/0129.lexiel/tick/skill_magic/4.skill_magic_look_player

# 攻撃三回目
    execute if score @s 3L.Tick matches 120 positioned ~ ~1.4 ~ run function asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet
# タグを消す
    tag @s remove Landing

# タグを消す
    execute if score @s 3L.Tick matches 130 run tag @s remove 3L.SkillMagic
# スコアを戻す
    execute if score @s 3L.Tick matches 130 run scoreboard players set @s 3L.Tick 0