#> asset:artifact/0210.terra_blade/trigger/sword/sword_schedule
#
#
#
# @within function
#       asset:artifact/0210.terra_blade/trigger/sword/summon_sword
#       asset:artifact/0210.terra_blade/trigger/sword/sword_schedule
#       asset:artifact/0210.terra_blade/trigger/rejoin_process

# 実行
    execute as @e[type=armor_stand,tag=5U.Sword] at @s run function asset:artifact/0210.terra_blade/trigger/sword/sword
# ループ
    execute if entity @e[type=armor_stand,tag=5U.Sword,limit=1] run schedule function asset:artifact/0210.terra_blade/trigger/sword/sword_schedule 1t replace
