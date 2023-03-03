#> asset:artifact/0837.the_world_knife/trigger/4.tick
#
#
#
# @within function
#      asset:artifact/0837.the_world_knife/trigger/3.main
#      asset:artifact/0837.the_world_knife/trigger/4.tick
#      asset:artifact/0837.the_world_knife/trigger/rejoin_process


# 動いていないナイフが実行する処理
    execute as @e[type=armor_stand,tag=N9.Knife,tag=!N9.Start] at @s run function asset:artifact/0837.the_world_knife/trigger/5.knife_tick

# 稼働中のナイフが実行する処理
    execute as @e[type=armor_stand,tag=N9.Start] at @s run function asset:artifact/0837.the_world_knife/trigger/6.knife_move
    execute as @e[type=armor_stand,tag=N9.Start] at @s run function asset:artifact/0837.the_world_knife/trigger/6.knife_move
    execute as @e[type=armor_stand,tag=N9.Start] at @s run function asset:artifact/0837.the_world_knife/trigger/6.knife_move
    execute as @e[type=armor_stand,tag=N9.Start] at @s run function asset:artifact/0837.the_world_knife/trigger/6.knife_move

# Scheduleループ
    execute if entity @e[type=armor_stand,tag=N9.Knife,limit=1] run schedule function asset:artifact/0837.the_world_knife/trigger/4.tick 1t replace