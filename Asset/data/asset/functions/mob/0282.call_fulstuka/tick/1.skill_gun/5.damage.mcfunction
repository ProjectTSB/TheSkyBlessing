#> asset:mob/0282.call_fulstuka/tick/1.skill_gun/5.damage
#
# ダメージを与えます
#
# @within function asset:mob/0282.call_fulstuka/tick/1.skill_gun/4.shot

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 85f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 補正を無視する
        data modify storage lib: Argument.BypassModifier set value true
    # ダメージ
        execute as @a if score @s UserID = @e[type=armor_stand,tag=7U.Fulstuka,limit=1] 7U.UserID run function lib:damage/modifier
        data modify storage lib: Argument.BypassModifier set value false
        execute as @e[type=#lib:living,tag=LandingTarget,tag=Enemy,tag=!Uninterferable,distance=..30] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,tag=LandingTarget,tag=Enemy,tag=!Uninterferable,distance=..30] remove LandingTarget