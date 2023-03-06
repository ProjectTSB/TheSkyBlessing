#> asset:mob/0302.call_gun/tick/shot/3.damage
#
# ダメージを与えます
#
# @within function asset:mob/0302.call_gun/tick/shot/2.shot

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 85f
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        execute as @a if score @s UserID = @e[type=zombie,tag=8E.Gun,limit=1] 8E.UserID run function lib:damage/modifier
        execute as @e[type=#lib:living,tag=LandingTarget,tag=Enemy,tag=!Uninterferable,distance=..30] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,tag=LandingTarget,tag=Enemy,tag=!Uninterferable,distance=..30] remove LandingTarget