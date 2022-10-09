#> asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/8.hit
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/6.big_laser

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=LandingTarget] run function lib:damage/

# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget