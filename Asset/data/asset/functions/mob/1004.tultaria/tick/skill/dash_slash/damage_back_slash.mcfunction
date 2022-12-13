#> asset:mob/1004.tultaria/tick/skill/dash_slash/damage_back_slash
#
# 背後部分のダメージ
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/back_slash_swoosh

# ヒット音なのでプレイヤー由来で
    playsound minecraft:item.trident.hit player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.soul_soil.break player @a ~ ~ ~ 1 1

# ダメージ設定
    # 与えるダメージ
    data modify storage lib: Argument.Damage set value 10.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset