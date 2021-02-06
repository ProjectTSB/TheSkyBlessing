#> asset_manager:sacred_treasure/triggers/
#
# 各トリガーに処理受け渡し
#
# @within function core:tick

# thisタグ
    tag @s add this
# IDの代入
    function asset_manager:sacred_treasure/core/data/from_player
# 各トリガーに処理受け渡し & AutoSlotのリセット
    function asset_manager:sacred_treasure/triggers/tick
    execute if entity @s[tag=TriggerFlag.Attack] run function asset_manager:sacred_treasure/triggers/attack
    execute if entity @s[tag=TriggerFlag.ClickCarrot] run function asset_manager:sacred_treasure/triggers/click.carrot
    execute if entity @s[tag=TriggerFlag.Damage] run function asset_manager:sacred_treasure/triggers/damage
    execute if entity @s[tag=TriggerFlag.Killed] run function asset_manager:sacred_treasure/triggers/killed
    execute if entity @s[tag=TriggerFlag.UseItem] run function asset_manager:sacred_treasure/triggers/use_item
    execute if entity @s[tag=TriggerFlag.Sneak] run function asset_manager:sacred_treasure/triggers/sneak
# リセット
    tag @s remove this
    tag @s remove TriggerFlag.Attack
    tag @s remove TriggerFlag.ClickCarrot
    tag @s remove TriggerFlag.Damage
    tag @s remove TriggerFlag.Killed
    tag @s remove TriggerFlag.UseItem
    tag @s remove TriggerFlag.Sneak