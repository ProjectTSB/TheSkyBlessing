#> world_manager:area/04.end/on_tick
#
#
#
# @within function world_manager:area/04.end/

# 死ぬがよい
    execute if predicate world_manager:area/04-01.end_mansion_void run function world_manager:area/04-01.end_mansion_void
    execute if predicate world_manager:area/04-02.end_forgotten_star_lower run function world_manager:area/04-02.end_forgotten_star_lower
    execute if predicate world_manager:area/04-03.end_forgotten_star_higher run function world_manager:area/04-03.end_forgotten_star_higher
# エンドラが沸いてる可能性があるのでさよならしようね
    kill @e[type=ender_dragon]