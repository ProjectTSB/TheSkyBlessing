#> metric:artifact.m
# @input args
#   ID: int
# @within function asset_manager:artifact/use/

data modify storage metric: Artifact.Used append value {}
$data modify storage metric: Artifact.Used[-1].ID set value $(ID)
data modify storage metric: Artifact.Used[-1].Time set from storage global Time

execute if data storage metric: Artifact.Used[500] run data modify storage metric: Artifact.Used2 set from storage metric: Artifact.Used
execute if data storage metric: Artifact.Used[500] run data modify storage metric: Artifact.Used set value []

$execute if data storage metric: Artifact.UsedCount.$(ID) store result score $Count Temporary run data get storage metric: Artifact.UsedCount.$(ID)
$execute store result storage metric: Artifact.UsedCount.$(ID) int 1 run scoreboard players add $Count Temporary 1
scoreboard players reset $Count Temporary
