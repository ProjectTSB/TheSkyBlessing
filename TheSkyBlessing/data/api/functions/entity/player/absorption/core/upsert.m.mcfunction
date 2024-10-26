#> api:entity/player/absorption/core/upsert.m
# @input args UUID: [int] @ 4
# @within function api:entity/player/absorption/add

#> Private
# @private
#declare score_holder $ExistsAbsorption

# EntityStorage
    function oh_my_dat:please

# InsertItem 作成
    data modify storage api: InsertItem set value {}
    execute store result storage api: InsertItem.Amount double 0.01 run data get storage api: Argument.Amount 100
    data modify storage api: InsertItem.UUID set from storage api: Argument.UUID
    data modify storage api: InsertItem.Priority set from storage api: Argument.Priority
    data modify storage api: InsertItem.WipedCallback set from storage api: Argument.WipedCallback

# Upsert 処理
    $execute store result score $ExistsAbsorption Temporary if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{UUID:$(UUID)}]
    $execute if score $ExistsAbsorption Temporary matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{UUID:$(UUID)}] set from storage api: InsertItem
    execute unless score $ExistsAbsorption Temporary matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions append from storage api: InsertItem

# リセット
    scoreboard players reset $ExistsAbsorption Temporary
    data remove storage api: InsertItem
