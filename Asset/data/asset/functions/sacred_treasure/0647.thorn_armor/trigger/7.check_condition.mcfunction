#> asset:sacred_treasure/0647.thorn_armor/trigger/7.check_condition
#
#
#
# @within function asset:sacred_treasure/0647.thorn_armor/trigger/6.damage_trigger

#> Private
# @private
    #declare score_holder $CheckMP

# MPが10以上なら実行
    scoreboard players set $CheckMP Lib 10
    execute store success score @s Temporary run function lib:mp/check
    execute if score @s Temporary matches 1 run function asset:sacred_treasure/0647.thorn_armor/trigger/8.fullset_hurt
    scoreboard players reset @s Temporary