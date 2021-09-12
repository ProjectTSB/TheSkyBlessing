#> asset:sacred_treasure/0651.prominence_armor/10.attack
#
#
#
# @within function asset:sacred_treasure/0651.prominence_armor/9.attack_trigger

# タグを自分に付与
    tag @s add I3.Attack

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=Enemy,tag=!Uninterferable] run particle lava ~ ~1.2 ~ 0.5 0.4 0.5 0 30 force @a[distance=..34]
    execute if score @s I3.BurnTick matches 0.. at @e[type=#lib:living,tag=Victim,tag=Enemy,tag=!Uninterferable] run particle soul_fire_flame ~ ~1.2 ~ 0.5 0.3 0.5 0 15 force @a[distance=..34]
    execute at @e[type=#lib:living,tag=Victim,tag=Enemy,tag=!Uninterferable] run particle smoke ~ ~0.6 ~ 0.4 0.2 0.4 0 20 force @a[distance=..34]
    execute at @e[type=#lib:living,tag=Victim,tag=Enemy,tag=!Uninterferable] run playsound entity.blaze.shoot master @a ~ ~ ~ 0.6 1 0


# ダメージ処理 BurnTickスコアがあるかどうかで変動
    execute unless score @s I3.BurnTick matches 0.. run data modify storage lib: Argument.Damage set value 20f
    execute if score @s I3.BurnTick matches 0.. run data modify storage lib: Argument.Damage set value 30f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=Enemy,tag=!Uninterferable] run function lib:damage/
    data remove storage lib: Argument