#> mob_manager:init/set_tag
#
#
#
# @within function mob_manager:init/

execute unless entity @s[type=!#lib:passive,type=!#lib:neutral_friend] run tag @s add Friend
execute unless entity @s[type=!#lib:hostile,type=!#lib:neutral_enemy] run tag @s add Enemy
