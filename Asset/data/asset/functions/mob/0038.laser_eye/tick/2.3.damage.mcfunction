#> asset:mob/0038.laser_eye/tick/2.3.damage
#
# ダメージ与える所
#
# @within function
#   asset:mob/0038.laser_eye/tick/2.2.shoot


# ダメージ設定
    # 与えるダメージ = 50
        data modify storage lib: Argument.Damage set value 1.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=player,tag=LandingTarget,distance=..50,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @e[type=player,tag=LandingTarget,distance=..50,limit=1] remove LandingTarget