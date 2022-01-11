#> asset:mob/0129.lexiel/tick/skill_sword/1.skill_sword
#
# 剣技を使います
#
# @within function asset:mob/0129.lexiel/tick/2.3.skill_active

# ポーズ
    execute if score @s 3L.Tick matches 85 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20041}
    execute if score @s 3L.Tick matches 85 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon with stone{CustomModelData:20036}
    execute if score @s 3L.Tick matches 85 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [342f,217f,0f]
    execute if score @s 3L.Tick matches 85 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [179f,326f,332f]

# 演出
    execute if score @s 3L.Tick matches 85 run playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1.6

# 攻撃判定
    execute if score @s 3L.Tick matches 100 run function asset:mob/0129.lexiel/tick/skill_sword/2.skill_sword_slash

# タグを消す
    execute if score @s 3L.Tick matches 110 run tag @s remove 3L.SkillSword
# スコアを少し進めた状態に戻す
    execute if score @s 3L.Tick matches 110 run scoreboard players set @s 3L.Tick 60