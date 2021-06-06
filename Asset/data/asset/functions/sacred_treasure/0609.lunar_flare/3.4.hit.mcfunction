#> asset:sacred_treasure/0609.lunar_flare/3.4.hit
#
# ビーム部
#
# @within function asset:sacred_treasure/0609.lunar_flare/**

# 演出


# ダメージ設定
    # 与えるダメージ = 10
        data modify storage lib: Argument.Damage set value 1.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 水属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] remove LandingTarget