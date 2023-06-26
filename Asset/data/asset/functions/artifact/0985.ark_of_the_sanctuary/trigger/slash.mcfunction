#> asset:artifact/0985.ark_of_the_sanctuary/trigger/slash
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/**

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2

# ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 220.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..4] positioned ^ ^ ^3 run function lib:damage/
# リセット
    function lib:damage/reset