#> minecraft:tests/summon_teleporters/reset
#
#
#
# @private

#> Private
# @private
    #declare tag Teleporter
    #declare storage asset:teleporter

kill @e[type=item_display,tag=Teleporter]

data remove storage asset:teleporter DPR
data remove storage asset:teleporter Teleporters
data remove storage asset:teleporter TeleporterOMDMap
