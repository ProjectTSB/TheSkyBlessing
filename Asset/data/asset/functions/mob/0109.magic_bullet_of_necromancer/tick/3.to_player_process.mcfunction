#> asset:mob/0109.magic_bullet_of_necromancer/tick/3.to_player_process
#
#
#
# @within function asset:mob/0109.magic_bullet_of_necromancer/tick/2.tick
    #declare score_holder $Fluctuation

# 無魔法属性ダメージ
    data modify storage lib: Argument.Damage set value 25.0d
    data modify storage lib: Argument.AttackType set value "Magic"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function lib:damage/
    data remove storage lib: Argument

# MP減少
    scoreboard players set $Fluctuation Lib -8
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function lib:mp/fluctuation
