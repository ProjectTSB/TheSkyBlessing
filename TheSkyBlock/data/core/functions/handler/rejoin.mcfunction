#> core:handler/rejoin
#
# 二度目以降のJoin時に実行される
#
# @within function core:tick/player

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Rejoin
# Reset
    scoreboard players reset @s RejoinEvent