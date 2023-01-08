#> asset:mob/0129.lexiel/tick/skill_explode/2.skill_explode_particle_and_damage
#
#
#
# @within function asset:mob/0129.lexiel/tick/skill_explode/1.skill_explode


# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 29.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset
