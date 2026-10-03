#> asset_manager:effect/tick
#
# @s の Effect を処理し、表示を更新する。
#
# @input as entity
# @within function core:tick/

# 元の付与順で末尾から取り出せるよう、処理予定を反転する
    function oh_my_dat:please
    function lib:array/session/open
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    function lib:array/reverse
    data modify storage asset:effect TickQueue set from storage lib: Array
    function lib:array/session/close

# 死亡・トーテム使用時の処理
    execute if entity @s[tag=Death] run tag @s add DeathProcess
    execute if score @s UsedTotem matches 1.. run tag @s add DeathProcess

# Effect の処理
    tag @s add Effect.CurrentOwner
    tag @s add this
    execute if data storage asset:effect TickQueue[0] run function asset_manager:effect/foreach
    tag @s remove Effect.CurrentOwner
    tag @s remove this

# 付与状態と表示を更新する
# イベントで OhMyDat の参照先が変わるため、取得し直す。
    function oh_my_dat:please
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[0] run tag @s remove HasAssetEffect
    execute if entity @s[type=player] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[0] run function asset_manager:effect/display/

# リセット
    scoreboard players reset @s UsedMilk
    scoreboard players reset @s UsedTotem
    tag @s remove DeathProcess
    data remove storage asset:effect TickQueue
