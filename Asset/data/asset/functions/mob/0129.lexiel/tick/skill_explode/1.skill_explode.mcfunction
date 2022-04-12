#> asset:mob/0129.lexiel/tick/skill_explode/1.skill_explode
#
# 爆破魔法
#
# @within function asset:mob/0129.lexiel/tick/2.3.skill_active

# ポーズ
    execute if score @s 3L.Tick matches 85 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20042}
    execute if score @s 3L.Tick matches 85 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon with stone{CustomModelData:20037}
    execute if score @s 3L.Tick matches 85 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    execute if score @s 3L.Tick matches 85 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [205f,44f,0f]

# 魔法陣を表示するタグを付与
    execute if score @s 3L.Tick matches 85 run tag @s add 3L.SkillExplodeParticle

# 攻撃
    execute if score @s 3L.Tick matches 100 positioned ^ ^ ^5 positioned ~ ~7 ~ rotated ~ 0 run function asset:mob/0129.lexiel/tick/skill_explode/2.skill_explode_particle_and_damage
    execute if score @s 3L.Tick matches 105 positioned ^ ^ ^5 positioned ~ ~5 ~ rotated ~ 0 run function asset:mob/0129.lexiel/tick/skill_explode/2.skill_explode_particle_and_damage
    execute if score @s 3L.Tick matches 110 positioned ^ ^ ^5 positioned ~ ~2 ~ rotated ~ 0 run function asset:mob/0129.lexiel/tick/skill_explode/2.skill_explode_particle_and_damage
    execute if score @s 3L.Tick matches 115 positioned ^ ^ ^5 positioned ~ ~0.3 ~ rotated ~ 0 run function asset:mob/0129.lexiel/tick/skill_explode/3.skill_explode_particle_and_damage2

# タグを消す
    execute if score @s 3L.Tick matches 130 run tag @s remove 3L.SkillExplode
    execute if score @s 3L.Tick matches 130 run tag @s remove 3L.SkillExplodeParticle
# スコアを戻す
    execute if score @s 3L.Tick matches 130 run scoreboard players set @s 3L.Tick 0