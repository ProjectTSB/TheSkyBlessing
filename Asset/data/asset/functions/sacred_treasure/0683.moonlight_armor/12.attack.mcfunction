#> asset:sacred_treasure/0683.moonlight_armor/12.attack
#
#
#
# @within function asset:sacred_treasure/0683.moonlight_armor/11.attack_trigger

# アタッククールタイム用のスコアとTagを自分に付与
    scoreboard players set @s IZ.AttackCool 2
    tag @s add IZ.Attack

# 演出
    execute positioned ~ ~1.2 ~ facing entity @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..100] eyes run function asset:sacred_treasure/0683.moonlight_armor/13.attack_recursion
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..100] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 1.6 0

# 範囲無属性魔法ダメージ
    data modify storage lib: Argument.Damage set value 12.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    function lib:damage/modifier
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..100] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] run function lib:damage/
    data remove storage lib: Argument