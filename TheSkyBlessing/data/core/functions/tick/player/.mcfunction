#> core:tick/player/
#
# プレイヤーに対するtick処理
#
# @within function core:tick/

#> this
# @within *
#   core:tick/player/
#   player_manager:vanilla_attack
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
#   asset_manager:teleporter/tick/**
#   settings:change_difficulty/**
#   core:handler/attack
    #declare tag this

#> ゲートウェイの検知用
# @private
    #declare tag NotInGateway

# thisタグ付与
    tag @s add this

# Deathタグ付与
    execute if entity @s[scores={DeathEvent=1..}] run tag @s add Death

# Triggers
    execute if entity @s[scores={FirstJoinEvent=1}] run function core:handler/first_join
    execute if entity @s[scores={RejoinEvent=1..}] run function core:handler/rejoin
    execute if entity @s[scores={RespawnEvent=1}] run function core:handler/respawn
    execute if entity @s[tag=InRespawnEvent,scores={RespawnEvent=80..}] run function core:handler/respawn.delay
    execute if entity @s[scores={Sneak=1..},predicate=lib:is_sneaking] run function core:handler/sneak
    execute if entity @s[advancements={core:handler/consume_item=true}] run function core:handler/consume_item
    execute if entity @s[advancements={core:handler/attack=true}] run function core:handler/attack
    execute if entity @s[advancements={core:handler/damage=true}] run function core:handler/damage
    execute if entity @s[advancements={core:handler/killed=true}] run function core:handler/killed
    execute if entity @s[advancements={core:handler/inventory_change=true}] run function core:handler/inventory_change
    execute if entity @s[advancements={core:handler/using_item=true}] run function core:handler/using_item
    execute if entity @s[advancements={core:handler/enter_nether_portal=true}] run function core:handler/enter_nether_portal
    execute if entity @s[scores={ClickCarrotEvent=1..}] run function core:handler/click.carrot
    execute if entity @s[scores={Elytra=1..}] run function core:handler/flying_elytra
    execute if entity @s[scores={DropEvent=1..}] run function core:handler/drop
# ゲートウェイに重なっていないならタグを付与
    execute positioned ~0.3 ~0.0 ~0.3 unless predicate lib:in_end_gateway positioned ~0.0 ~0.0 ~-.6 unless predicate lib:in_end_gateway positioned ~-.6 ~0.0 ~0.6 unless predicate lib:in_end_gateway positioned ~0.0 ~0.0 ~-.6 unless predicate lib:in_end_gateway positioned ~0.3 ~0.9 ~0.3 positioned ~0.3 ~0.0 ~0.3 unless predicate lib:in_end_gateway positioned ~0.0 ~0.0 ~-.6 unless predicate lib:in_end_gateway positioned ~-.6 ~0.0 ~0.6 unless predicate lib:in_end_gateway positioned ~0.0 ~0.0 ~-.6 unless predicate lib:in_end_gateway positioned ~0.3 ~0.9 ~0.3 positioned ~0.3 ~0.0 ~0.3 unless predicate lib:in_end_gateway positioned ~0.0 ~0.0 ~-.6 unless predicate lib:in_end_gateway positioned ~-.6 ~0.0 ~0.6 unless predicate lib:in_end_gateway positioned ~0.0 ~0.0 ~-.6 unless predicate lib:in_end_gateway run tag @s add NotInGateway
# ゲートウェイに入っていたなら、低速落下を付与
    effect give @s[gamemode=!spectator,tag=!NotInGateway] slow_falling 1 0 true
# エリア処理
    function world_manager:area/
# トリガー処理
    function player_manager:trigger/
# 落下ダメージの処理
    function player_manager:fall_damage/
# 神の処理
    function player_manager:god/tick
# 神器処理
    function asset_manager:artifact/tick/player
# HP自然回復処理
    function player_manager:health/regen/check
# MP回復処理
    function player_manager:mp/regen/check
# テレポーター処理
    function asset_manager:teleporter/tick/player
# チーム処理
    function player_manager:set_team_and_per_health
# 緩衝体力処理
    function player_manager:absorption/
# リセット
    tag @s remove this
    tag @s remove NotInGateway
