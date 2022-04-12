#> asset:sacred_treasure/0210.terra_blade/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if entity @e[type=armor_stand,tag=ChuzTerraShot,limit=1] run schedule function asset:sacred_treasure/0210.terra_blade/trigger/3.1.terra_shot_tick 1t