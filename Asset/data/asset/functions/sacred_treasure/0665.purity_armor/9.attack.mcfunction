#> asset:sacred_treasure/0665.purity_armor/9.attack
#
#
#
# @within function asset:sacred_treasure/0665.purity_armor/8.attack_trigger

# クールタイム用Tagとスコア
    tag @s add IH.Attack
    scoreboard players set @s IH.AttackCool 2

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable] run particle sweep_attack ~ ~1.2 ~ 0.2 0.2 0.2 0 8 force @a[distance=..50]
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable] run playsound entity.player.attack.sweep master @a ~ ~1.2 ~ 0.6 1 0

# 無属性物理10ダメージ
    data modify storage lib: Argument.Damage set value 10.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable] run function lib:damage/
    data remove storage lib: Argument

# 無属性魔法10ダメージ
    data modify storage lib: Argument.Damage set value 10.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable] run function lib:damage/
    data remove storage lib: Argument
