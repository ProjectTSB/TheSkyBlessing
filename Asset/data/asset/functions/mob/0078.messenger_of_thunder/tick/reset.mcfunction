#> asset:mob/0078.messenger_of_thunder/tick/reset
#
#
#
# @within function
#   asset:mob/0078.messenger_of_thunder/skill/1/1
#   asset:mob/0078.messenger_of_thunder/skill/2/1
#   asset:mob/0078.messenger_of_thunder/skill/3/1

# リセット
    scoreboard players reset @s 26.SkillSelect
    execute if entity @s[scores={26.Tick=0..}] run scoreboard players set @s 26.Tick -80