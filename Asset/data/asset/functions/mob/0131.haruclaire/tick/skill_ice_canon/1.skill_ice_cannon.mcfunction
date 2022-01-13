#> asset:mob/0131.haruclaire/tick/skill_ice_canon/1.skill_ice_cannon
#
#
#
# @within function asset:mob/0131.haruclaire/tick/2.2.skill_active

# ポーズ
    execute if score @s 3N.Tick matches 1 run item replace entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20060}
    execute if score @s 3N.Tick matches 1 run item replace entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon with stone{CustomModelData:20057}
    execute if score @s 3N.Tick matches 1 run data modify entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    execute if score @s 3N.Tick matches 1 run data modify entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [270f,0f,0f]

# タグをつける
    tag @s[scores={3N.Tick=1}] add 3N.SkillIceCannonParticle

# キャノン攻撃。あたった時に消える
    execute if score @s 3N.Tick matches 20..33 if entity @s[tag=!3N.SkillIceCannonHit] run function asset:mob/0131.haruclaire/tick/skill_ice_canon/2.skill_ice_cannon_nohit

# タグを消す
    tag @s[scores={3N.Tick=33}] remove 3N.SkillIceCannonParticle
    tag @s[scores={3N.Tick=33}] remove 3N.SkillIceCannonHit


# タグを消す
    execute if score @s 3N.Tick matches 60 run tag @s remove 3N.SkillIceCannon
# スコアを少し進めた状態に戻す
    execute if score @s 3N.Tick matches 60 run scoreboard players set @s 3N.Tick -30