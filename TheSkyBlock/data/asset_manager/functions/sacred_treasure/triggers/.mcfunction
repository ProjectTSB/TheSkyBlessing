#> asset_manager:sacred_treasure/triggers/
#
# 各トリガーに処理受け渡し
#
# @within function core:tick

# thisタグ
    tag @s add this
# IDの代入
    function asset_manager:sacred_treasure/core/data/set_old
    function asset_manager:sacred_treasure/core/data/set_new
# Attacker / Victimのセット
    execute as @e[type=#lib:living,type=!player,tag=AttackingEntity,distance=..150] if score @s AttackingEntity = @a[tag=this,limit=1] AttackingEntity run tag @s add Attacker
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tag @s add Victim
# 各トリガーに処理受け渡し & AutoSlotのリセット
    function asset_manager:sacred_treasure/triggers/tick
    execute if entity @s[tag=TriggerFlag.Attack] run function asset_manager:sacred_treasure/triggers/attack
    execute if entity @s[tag=TriggerFlag.ClickCarrot] run function asset_manager:sacred_treasure/triggers/click.carrot
    execute if entity @s[tag=TriggerFlag.Damage] run function asset_manager:sacred_treasure/triggers/damage
    execute if entity @s[tag=TriggerFlag.Killed] run function asset_manager:sacred_treasure/triggers/killed
    execute if entity @s[tag=TriggerFlag.UseItem] run function asset_manager:sacred_treasure/triggers/use_item
    execute if entity @s[tag=TriggerFlag.Sneak] run function asset_manager:sacred_treasure/triggers/sneak/
# EntityStorageにデータ突っ込む
    function asset_manager:sacred_treasure/core/data/stash_context
# リセット
    function asset_manager:sacred_treasure/core/data/reset_context
    tag @e[tag=Attacker] remove Attacker
    tag @e[tag=Victim] remove Victim
    tag @s remove this
    tag @s remove TriggerFlag.Attack
    tag @s remove TriggerFlag.ClickCarrot
    tag @s remove TriggerFlag.Damage
    tag @s remove TriggerFlag.Killed
    tag @s remove TriggerFlag.UseItem
    tag @s remove TriggerFlag.Sneak