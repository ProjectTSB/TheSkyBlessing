#> asset:mob/0216.gray_guardian/tick/4.skill_impact/4.damage
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_impact/3.impact

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 49.0f
# 魔法属性
    data modify storage lib: Argument.AttackType set value "Physical"
# 無属性
    data modify storage lib: Argument.ElementType set value "None"
# ダメージ
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Friend,tag=!Uninterferable,nbt={OnGround:1b},distance=..30] run function lib:damage/
# プレイヤー用のダメージファンクション
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..30] at @s run function asset:mob/0216.gray_guardian/tick/4.skill_impact/5.damage_player
# 上空へ飛ばす
    execute as @e[type=#lib:living,type=!player,tag=Friend,tag=!Uninterferable,nbt={OnGround:1b},distance=..30] at @s run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,Effects:[{Id:25,Amplifier:80b,Duration:3,ShowParticles:0b},{Id:11,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b}]}
# リセット
    function lib:damage/reset
