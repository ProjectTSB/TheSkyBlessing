#> asset:mob/0138.combat_turret/tick/2.3.damage
#
# ダメージを与えます
#
# @within function asset:mob/0138.combat_turret/tick/2.2.shot

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=player,tag=LandingTarget,distance=..50,limit=1] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @e[type=player,tag=LandingTarget,distance=..50,limit=1] remove LandingTarget