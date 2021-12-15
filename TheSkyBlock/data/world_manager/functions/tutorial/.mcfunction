#> world_manager:tutorial/
#
#
#
# @within function world_manager:area/01.tutorial

execute if predicate world_manager:tutorial/01.tutorial_message_flag unless entity @s[tag=TutorialFlag1] run function world_manager:tutorial/1.goal
execute if predicate world_manager:tutorial/02.tutorial_message_flag unless entity @s[tag=TutorialFlag2] run function world_manager:tutorial/2.religion
execute if predicate world_manager:tutorial/03.tutorial_message_flag unless entity @s[tag=TutorialFlag3] run function world_manager:tutorial/3.sacred_treasure
execute if predicate world_manager:tutorial/04.tutorial_message_flag unless entity @s[tag=TutorialFlag4] run function world_manager:tutorial/4.island
execute if predicate world_manager:tutorial/05.tutorial_message_flag unless entity @s[tag=TutorialFlag5] run function world_manager:tutorial/5.lost_items
execute if predicate world_manager:tutorial/06.tutorial_message_flag unless entity @s[tag=TutorialFlag6] run function world_manager:tutorial/6.spawner