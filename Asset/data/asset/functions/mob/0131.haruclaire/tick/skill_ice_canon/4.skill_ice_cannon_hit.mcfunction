#> asset:mob/0131.haruclaire/tick/skill_ice_canon/4.skill_ice_cannon_hit
#
#
#
# @within function asset:mob/0131.haruclaire/tick/skill_ice_canon/3.skill_ice_cannon_iceball

# 演出
    execute at @a[gamemode=!spectator,distance=..2] run particle dust 1 1000000000 1000000000 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 40 normal @a
    execute at @a[gamemode=!spectator,distance=..2] run particle dust 1 1000000000 1000000000 1 ~ ~2.2 ~ 0 2 0 1 140 normal @a
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
    playsound item.trident.riptide_3 hostile @a ~ ~ ~ 1 2
    playsound item.trident.riptide_2 hostile @a ~ ~ ~ 1 2

# 移動速度低下付与
    effect give @a[tag=!PlayerShouldInvulnerable,distance=..2] slowness 10 2

# ダメージ
    # 与えるダメージ = 25
        data modify storage lib: Argument.Damage set value 55f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset
# 攻撃があたったらタグを付与
    tag @s add 3N.SkillIceCannonHit