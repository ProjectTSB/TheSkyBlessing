#> asset:artifact/common/replace
#
# 直接特定Slotに神器を配置します
#
# @within function asset:artifact/common/give

# storageチェック
    execute unless data storage asset:context Slot run data modify storage asset:context Slot set value "mainhand"

# slot指定replace
    execute if data storage asset:context {Slot:"mainhand"} run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"offhand"} run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"feet"} run item replace entity @s armor.feet from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"legs"} run item replace entity @s armor.legs from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"chest"} run item replace entity @s armor.chest from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"head"} run item replace entity @s armor.head from block 10000 0 10000 container.0

# リセット
    data remove storage asset:context Slot