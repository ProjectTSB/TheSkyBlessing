#> asset:mob/0129.lexiel/tick/skill_magic/3.skill_magic_landing
#
# ダメージ処理
#
# @within function asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0 1

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 22.5f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @p[gamemode=!creative,tag=LandingTarget,distance=..50] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50] remove LandingTarget