#> metric:artifact.m
# @input args
#   ID: int
# @within function asset_manager:artifact/use/

data modify storage metric: Artifact.Used append value {}
$data modify storage metric: Artifact.Used[-1].ID set value $(ID)
data modify storage metric: Artifact.Used[-1].Time set from storage global Time

execute if data storage metric: Artifact.Used[500] run data modify storage metric: Artifact.Used2 set from storage metric: Artifact.Used
execute if data storage metric: Artifact.Used[500] run data modify storage metric: Artifact.Used set value []
