#> core:tick/player
#
# プレイヤーに対するtick処理
#
# @within function core:tick/

# Triggers
    execute if entity @s[scores={FirstJoinEvent=1}] run function core:handler/first_join
    execute if entity @s[scores={RejoinEvent=1..}] run function core:handler/rejoin
    execute if entity @s[scores={RespawnEvent=1}] run function core:handler/respawn
    execute if entity @s[scores={RespawnEvent=80}] run function core:handler/respawn.delay
    execute if entity @s[scores={Sneak=1..},predicate=lib:is_sneaking] run function core:handler/sneak
    execute if entity @s[advancements={core:handler/consume_item=true}] run function core:handler/consume_item
    execute if entity @s[scores={AttackEvent=1..}] run function core:handler/attack
    execute if entity @s[advancements={core:handler/damage=true}] run function core:handler/damage
    execute if entity @s[advancements={core:handler/killed=true}] run function core:handler/killed
    execute if entity @s[advancements={core:handler/inventory_change=true}] run function core:handler/inventory_change
    execute if entity @s[advancements={core:handler/using_item=true}] run function core:handler/using_item
    execute if entity @s[scores={ClickCarrotEvent=1..}] run function core:handler/click.carrot
    execute if entity @s[scores={Elytra=1..}] run function core:handler/flying_elytra
    execute if entity @s[scores={DropEvent=1..}] run function core:handler/drop
# エリア処理
    function world_manager:area/
# 神の処理
    function player_manager:god/tick
# 神器処理
    function asset_manager:sacred_treasure/tick/player
# MP回復処理
    function player_manager:mp/regen/check
# テレポーター処理
    function world_manager:gimmick/teleporter/
# チーム処理
    function player_manager:set_team