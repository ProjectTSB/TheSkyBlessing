execute unless score #tween_duration aj.i = #tween_duration aj.i run scoreboard players set #tween_duration aj.i 1
scoreboard players operation @s aj.tween_time = #tween_duration aj.i
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get #tween_duration aj.i
scoreboard players remove @s aj.tween_time 1