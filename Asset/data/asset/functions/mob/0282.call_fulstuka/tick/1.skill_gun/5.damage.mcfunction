#> asset:mob/0282.call_fulstuka/tick/1.skill_gun/5.damage
#
# ダメージを与えます
#
# @within function asset:mob/0282.call_fulstuka/tick/1.skill_gun/4.shot

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.5f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=LandingTarget,tag=Enemy,tag=!Uninterferable,distance=..30] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @e[type=#lib:living,tag=LandingTarget,tag=Enemy,tag=!Uninterferable,distance=..30] remove LandingTarget