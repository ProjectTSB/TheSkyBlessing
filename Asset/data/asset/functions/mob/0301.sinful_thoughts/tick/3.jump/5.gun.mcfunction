#> asset:mob/0301.sinful_thoughts/tick/3.jump/5.gun
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/3.jump/1.jump

# 演出
    particle dust 0.09 0.09 0.09 1.6 ~ ~1.2 ~ 1 1 1 0 180
    particle dust 0.42 0.02 0.02 1.4 ~ ~1.2 ~ 1.03 1.03 1.03 0 120

# 演出
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.8 2
    playsound ogg:item.trident.thunder2 hostile @a ~ ~ ~ 1 1.5
# ダメージ判定
# 与えるダメージ
    data modify storage lib: Argument.Damage set value 60f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset

