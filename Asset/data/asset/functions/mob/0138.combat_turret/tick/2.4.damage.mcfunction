#> asset:mob/0138.combat_turret/tick/2.4.damage
#
# ダメージを与えます
#
# @within function asset:mob/0138.combat_turret/tick/2.3.shot

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.5f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @p[gamemode=!creative,tag=LandingTarget,distance=..30] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50] remove LandingTarget