#> asset:mob/0301.sinful_thoughts/tick/common/slash_damage
#
# 基本的に斬撃はこれ
#
# @within function asset:mob/0301.sinful_thoughts/tick/**/**


# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.7

# ダメージ判定
# 与えるダメージ
    data modify storage lib: Argument.Damage set value 25f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset

# デバフ
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/0301.sinful_thoughts/tick/common/debuff