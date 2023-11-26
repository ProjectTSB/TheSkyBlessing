#> asset_manager:artifact/data/current/get
#
# TargetSlotを元にプレイヤーのデータを取得する
#
# @input
#   as player
#   storage asset:artifact TargetSlot : Slot
# @output storage asset:artifact
#   Item : [ItemData]
#   TargetDefaultSlot : Slot
# @within function
#   asset_manager:artifact/check/
#   asset_manager:artifact/use/

# autoで無い場合はそのままDefaultSlotに突っ込む
    execute unless data storage asset:artifact {TargetSlot:"auto"} run data modify storage asset:artifact TargetDefaultSlot set from storage asset:artifact TargetSlot
# autoの場合の処理
    execute if data storage asset:artifact {TargetSlot:"auto"} run data modify storage asset:artifact TargetDefaultSlot set from storage asset:context Items.AutoSlot
    execute if data storage asset:artifact {TargetSlot:"auto"} unless data storage asset:context Items.AutoSlot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"autoはこのトリガーでは実行できません","color":"white"}]
    execute if data storage asset:artifact {TargetSlot:"auto"} unless data storage asset:context Items.AutoSlot run data modify storage asset:artifact TargetDefaultSlot set value 'mainhand'

# 取得
    execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run data modify storage asset:artifact TargetItems append from storage asset:context Items.mainhand
    execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} run data modify storage asset:artifact TargetItems append from storage asset:context Items.offhand
    execute if data storage asset:artifact {TargetDefaultSlot:"feet"} run data modify storage asset:artifact TargetItems append from storage asset:context Items.feet
    execute if data storage asset:artifact {TargetDefaultSlot:"legs"} run data modify storage asset:artifact TargetItems append from storage asset:context Items.legs
    execute if data storage asset:artifact {TargetDefaultSlot:"chest"} run data modify storage asset:artifact TargetItems append from storage asset:context Items.chest
    execute if data storage asset:artifact {TargetDefaultSlot:"head"} run data modify storage asset:artifact TargetItems append from storage asset:context Items.head

    execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run data modify storage asset:artifact HotbarItems set from storage asset:context Items.hotbar
    execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function asset_manager:artifact/data/current/filter
    execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run data remove storage asset:artifact HotbarItems