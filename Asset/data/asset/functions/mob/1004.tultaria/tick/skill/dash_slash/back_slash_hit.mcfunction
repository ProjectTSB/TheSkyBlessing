#> asset:mob/1004.tultaria/tick/skill/dash_slash/back_slash_hit
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/5.delay_position

# ヒット音
    execute at @a[tag=Hit,distance=..20] run playsound minecraft:item.trident.hit player @a ~ ~ ~ 1 0.8
    execute at @a[tag=Hit,distance=..20] run playsound minecraft:block.soul_soil.break player @a ~ ~ ~ 1 1

# ダメージ設定
    # 与えるダメージ
    data modify storage lib: Argument.Damage set value 20.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=Hit,distance=..20] run function lib:damage/
# リセット
    function lib:damage/reset

# Tag消し
    tag @a remove Hit