#> asset:artifact/0573.final_prism/trigger/vfx/final_start
#
# 派手派手だな
#
# @within function asset:artifact/0573.final_prism/trigger/3.main
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 2 1
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 2 1.5
playsound minecraft:block.bell.use player @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.bell.use player @a ~ ~ ~ 1.5 1
particle explosion ~ ~ ~ 0 0 0 0 0 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10
execute rotated ~ ~90 positioned ^ ^1 ^ run function asset:artifact/0573.final_prism/trigger/vfx/circle
execute rotated ~ ~90 positioned ^ ^3 ^ run function asset:artifact/0573.final_prism/trigger/vfx/circle
execute rotated ~ ~90 positioned ^ ^5 ^ run function asset:artifact/0573.final_prism/trigger/vfx/circle
