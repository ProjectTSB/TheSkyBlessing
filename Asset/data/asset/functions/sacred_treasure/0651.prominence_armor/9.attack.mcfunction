#> asset:sacred_treasure/0651.prominence_armor/9.attack
#
#
#
# @within function asset:sacred_treasure/0651.prominence_armor/8.attack_trigger

# クールタイム用タグとスコアを自分に付与
    tag @s add I3.Attack
    scoreboard players set @s I3.AttackCool 2

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=Enemy,distance=..100] run particle lava ~ ~1.2 ~ 0.5 0.4 0.5 0 30 force @a[distance=..34]
    execute at @e[type=#lib:living,tag=Victim,tag=Enemy,distance=..100] run particle smoke ~ ~0.6 ~ 0.4 0.2 0.4 0 20 force @a[distance=..34]
    execute at @e[type=#lib:living,tag=Victim,tag=Enemy,distance=..100] run playsound entity.blaze.shoot master @a ~ ~ ~ 0.6 1 0


# ダメージ処理 IsFightingスコアの数値で変動
    data modify storage lib: Argument.Damage set value 20f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=Enemy,distance=..100] run function lib:damage/
    data remove storage lib: Argument