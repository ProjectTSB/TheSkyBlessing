#> asset:mob/0059.jack_o_lantern/tick/3.missile/5.suicide
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/3.missile/3.tackle

# ぶつかる
    tp @s ~ ~ ~

# 演出
    playsound ogg:mob.strider.retreat5 hostile @a ~ ~ ~ 1 1.5
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.7 100
    playsound minecraft:entity.generic.explode hostile @a
# 割合ダメージ
    execute store result storage lib: Argument.Damage float 0.04 run function api:mob/get_max_health
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value 1b
# 補正
    function lib:damage/modifier
# ダメージ
    function lib:damage/
# リセット
    function lib:damage/reset
