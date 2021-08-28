#> core:handler/flying.elytra
#
# エリトラで飛行した際に実行される
#
# @within function core:tick/player

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.FlyingElytra
# Reset
    scoreboard players reset @s FlyingEvent