#> asset:mob/0282.call_fulstuka/tick/2.skill_melee/3.slash
#
#
#
# @within function asset:mob/0282.call_fulstuka/tick/2.skill_melee/1.skill_melee

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 260.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 補正を無視する
        data modify storage lib: Argument.BypassModifier set value true
    # ダメージ
        execute as @a if score @s UserID = @e[type=armor_stand,tag=7U.Fulstuka,limit=1] 7U.UserID run function lib:damage/modifier
        data modify storage lib: Argument.BypassModifier set value false
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    playsound minecraft:item.trident.return neutral @a ~ ~ ~ 1 2
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] at @s run particle dust 1 0 0.749 2 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a