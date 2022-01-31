#> asset:mob/0216.gray_guardian/tick/1.skill_melee/4.slash
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/1.skill_melee/1.skill_melee
    #declare tag Hit

# 演出
    execute positioned ^-0.6 ^ ^ run function asset:mob/0216.gray_guardian/tick/1.skill_melee/particle
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# タグ付与
    tag @a[gamemode=!spectator,gamemode=!creative,distance=..2.5] add Hit
    execute positioned ^0.5 ^ ^1 run tag @a[gamemode=!spectator,gamemode=!creative,distance=..1] add Hit
    execute positioned ^-0.5 ^ ^1 run tag @a[gamemode=!spectator,gamemode=!creative,distance=..1] add Hit

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=Hit,distance=..5] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument
    tag @e[tag=Hit,distance=..10] remove Hit