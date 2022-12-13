#> asset:mob/0120.convict/tick/3.slash/5.percent_damage
#
# 割合ダメージの処理
#
# @within function asset:mob/0120.convict/tick/3.slash/4.slash_attack2

# 割合ダメージ
    execute store result storage lib: Argument.Damage float 0.020 run attribute @s generic.max_health get 10
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value 1b
    execute as @e[type=wither_skeleton,tag=this,distance=..0.01,limit=1] run function lib:damage/modifier
    function lib:damage/
# リセット
    function lib:damage/reset