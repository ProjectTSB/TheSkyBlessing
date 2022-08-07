#> asset:mob/0301.sinful_thoughts/tick/4.step/4.rotate_slash
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.step/1.step

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 2 1

# ダメージ判定
# 与えるダメージ
    data modify storage lib: Argument.Damage set value 40f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function lib:damage/
# リセット
    function lib:damage/reset

# デバフ
    execute as @a[distance=..5] run function asset:mob/0301.sinful_thoughts/tick/common/debuff
