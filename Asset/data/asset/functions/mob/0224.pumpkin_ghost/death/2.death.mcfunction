#> asset:mob/0224.pumpkin_ghost/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0224.pumpkin_ghost/death/1.trigger

# 割合ダメージ
    execute store result storage lib: Argument.Damage float 0.020 run attribute @s generic.max_health get 10
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ByPassResist set value 1b
    data modify storage lib: Argument.FixedDamage set value 1b
# 死亡メッセージ
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは呪われてしまった！","with":[{"selector":"@p[tag=Killer,distance=..50]"}]}]']
# 補正
    execute as @p[tag=Killer,distance=..50] run function lib:damage/modifier
# ダメージ
    function lib:damage/