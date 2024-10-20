#> api:heal/core/trigger_on_heal
#
#
#
# @within function api:heal/core/player

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Heal append value {}
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Heal[-1].Heal double 0.01 run data get storage api: Argument.Fluctuation 100
