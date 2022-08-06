#> asset:mob/0301.sinful_thoughts/tick/1.slash/3.powerful_slash_damage
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/1.slash/1.slash

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.7

# ダメージ判定
# 与えるダメージ
    data modify storage lib: Argument.Damage set value 50f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[tag=8D.AttackHit,tag=!PlayerShouldInvulnerable,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset

# デバフ
    execute as @a[tag=8D.AttackHit,distance=..10] run function asset:mob/0301.sinful_thoughts/tick/common/debuff

# リセット
    tag @a[distance=..10] remove 8D.AttackHit