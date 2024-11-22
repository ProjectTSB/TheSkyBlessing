#> minecraft:tests/summon_teleporters/
# @within function minecraft:test

#> Private
# @private
    #declare function asset:teleporter/002/register
    #declare function asset:teleporter/004/register
    #declare function asset:teleporter/005/register
    #declare function asset:teleporter/006/register
    #declare function asset:teleporter/007/register
    #declare function asset:teleporter/008/register
    #declare function asset:teleporter/009/register
    #declare function asset:teleporter/010/register
    #declare function asset:teleporter/011/register
    #declare function asset:teleporter/012/register
    #declare function asset:teleporter/013/register
    #declare function asset:teleporter/014/register
    #declare function asset:teleporter/015/register
    #declare function asset:teleporter/016/register
    #declare function asset:teleporter/017/register
    #declare function asset:teleporter/018/register
    #declare function asset:teleporter/019/register
    #declare function asset:teleporter/020/register
    #declare function asset:teleporter/021/register
    #declare function asset:teleporter/022/register
    #declare function asset:teleporter/023/register
    #declare function asset:teleporter/024/register
    #declare function asset:teleporter/025/register
    #declare function asset:teleporter/026/register
    #declare function asset:teleporter/028/register
    #declare function asset:teleporter/030/register
    #declare function asset:teleporter/031/register
    #declare function asset:teleporter/032/register
    #declare function asset:teleporter/033/register
    #declare function asset:teleporter/034/register
    #declare function asset:teleporter/035/register
    #declare function asset:teleporter/036/register
    #declare function asset:teleporter/037/register
    #declare function asset:teleporter/038/register
    #declare function asset:teleporter/039/register
    #declare function asset:teleporter/040/register
    #declare function asset:teleporter/041/register
    #declare function asset:teleporter/042/register
    #declare function asset:teleporter/043/register
    #declare function asset:teleporter/044/register
    #declare function asset:teleporter/045/register
    #declare function asset:teleporter/046/register
    #declare function asset:teleporter/047/register
    #declare function asset:teleporter/048/register
    #declare function asset:teleporter/050/register
    #declare function asset:teleporter/051/register
    #declare function asset:teleporter/052/register
    #declare function asset:teleporter/053/register
    #declare function asset:teleporter/054/register
    #declare tag Teleporter
    #declare storage asset:teleporter

kill @e[type=item_display,tag=Teleporter]

data remove storage asset:teleporter DPR
data remove storage asset:teleporter Teleporters
data remove storage asset:teleporter TeleporterOMDMap

execute align xz run tp @s ~0.5 ~ ~0.5 0 0

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/002/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 diamond_block keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/004/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/005/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/006/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/007/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/008/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/009/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/010/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/011/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/012/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/013/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/014/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/015/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/016/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/017/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/018/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/019/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/020/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/021/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/022/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/023/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/024/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/025/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/026/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/028/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/030/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/031/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/032/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/033/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/034/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/035/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/036/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/037/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/038/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/039/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/040/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/041/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/042/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/043/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~9 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/044/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep


data modify storage api: Argument.ID set value 7
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
data modify storage api: Argument.ID set value 13
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
data modify storage api: Argument.ID set value 23
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
data modify storage api: Argument.ID set value 28
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
data modify storage api: Argument.ID set value 32
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
data modify storage api: Argument.ID set value 36
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
data modify storage api: Argument.ID set value 37
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
data modify storage api: Argument.ID set value 38
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
data modify storage api: Argument.ID set value 42
data modify storage api: Argument.ActivationState set value "Activate"
function api:teleporter/set_activation_state/from_id
