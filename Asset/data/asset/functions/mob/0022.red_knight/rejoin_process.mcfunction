#> asset:mob/0022.red_knight/rejoin_process
#
# リジョイン時処理
#
# @within tag/function asset:rejoin
    execute if entity @e[type=snowball,tag=M.DeathAnimation] run schedule function asset:mob/0022.red_knight/death/death_tick 1t
    execute if entity @e[type=armor_stand,tag=M.SlashEntity] run schedule function asset:mob/0022.red_knight/tick/skills/slash_entity/2.tick 1t