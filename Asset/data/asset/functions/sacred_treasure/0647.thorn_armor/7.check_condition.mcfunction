#> asset:sacred_treasure/0647.thorn_armor/7.check_condition
#
#
#
# @within function asset:sacred_treasure/0647.thorn_armor/6.damage_trigger

# MPが10以上なら実行
    execute if entity @s[tag=HZ.FullSet] run scoreboard players set $CheckMP Lib 10
    execute as @s if entity @s[tag=HZ.FullSet] as @s store success score @s Temporary run function lib:mp/check
    execute if entity @s[tag=HZ.FullSet] if score @s Temporary matches 1 run function asset:sacred_treasure/0647.thorn_armor/8.fullset_hurt
    scoreboard players reset @s Temporary
