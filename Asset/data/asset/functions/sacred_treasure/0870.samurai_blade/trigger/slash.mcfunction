#> asset:sacred_treasure/0870.samurai_blade/trigger/slash
#
#
#
# @within function asset:sacred_treasure/0870.samurai_blade/trigger/**

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2

# ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..4] positioned ^ ^ ^3 run function lib:damage/
# リセット
    data remove storage lib: Argument