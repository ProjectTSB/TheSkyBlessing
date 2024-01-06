#> asset:mob/0078.messenger_of_thunder/tick/reset
#
# 諸々をリセットする
#
# @within function
#   asset:mob/0078.messenger_of_thunder/skill/*/1

# リセット
    scoreboard players reset @s 26.SkillSelect
    scoreboard players set @s 26.Tick -60