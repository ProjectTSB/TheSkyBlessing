#> asset:mob/0131.haruclaire/tick/skill_ice_area/2.skill_ice_area_attack
#
#
#
# @within function asset:mob/0131.haruclaire/tick/skill_ice_area/1.skill_ice_area

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
    particle dust 1 1000000000 1000000000 1 ~ ~2 ~ 3 2 3 1 300 normal @a
    particle dust 1000000000 1000000000 1000000000 1 ~ ~2 ~ 3 2 3 1 40 normal @a

    playsound minecraft:entity.dolphin.jump hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.dolphin.splash hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0

# 移動速度低下付与
    effect give @a[gamemode=!spectator,distance=..6] slowness 10 2

# ダメージ
    # 与えるダメージ = 30
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset

# 周囲にプレイヤーがいたら
    execute if entity @a[gamemode=!spectator,distance=..6] run tag @s add 3N.SkillIceAreaHit

    execute if entity @a[gamemode=!spectator,distance=..6] at @a[gamemode=!spectator,distance=..6] run particle dust 1 1000000000 1000000000 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 140 normal @a