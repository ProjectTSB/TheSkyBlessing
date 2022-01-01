#> asset:mob/0105.potion_projectile/tick/thunder/2.thunder_damage
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/thunder/1.break
#> Private
# @private
    #declare score_holder $Fluctuation

# 雷属性ダメージ
    data modify storage lib: Argument.Damage set value 25.0
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function lib:damage/
    data remove storage lib: Argument

# MP減少
    scoreboard players set $Fluctuation Lib -20
    execute as @a[distance=..3] run function lib:mp/fluctuation
