#> asset:mob/0216.gray_guardian/tick/1.skill_melee/4.slash
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/1.skill_melee/1.skill_melee

#> private
# @private
    #declare tag Hit

# 演出
    execute positioned ^-0.6 ^ ^ run function asset:mob/0216.gray_guardian/tick/1.skill_melee/particle
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# タグ付与
    tag @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..2.5] add Hit
    execute positioned ^0.5 ^ ^1 run tag @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..2] add Hit
    execute positioned ^-0.5 ^ ^1 run tag @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..2] add Hit

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 53.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Friend,tag=Hit,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..5] at @s run function lib:damage/
# リセット
    function lib:damage/reset
    tag @e[type=#lib:living,tag=Friend,tag=Hit,tag=!Uninterferable,distance=..10] remove Hit