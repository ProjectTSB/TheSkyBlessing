#> core:tick
#
# #tick時に毎回実行される処理群
#
# ここには多くの処理を書かないこと
#
# @within tag/function minecraft:tick

# プレイヤー処理部
    # Triggers
        execute as @a[scores={FirstJoinEvent=1}] at @s run function core:handler/first_join
        execute as @a[scores={RejoinEvent=1..}] at @s run function core:handler/rejoin
        execute as @a[scores={DeathEvent=1..}] at @s run function core:handler/death
        execute as @a[scores={RespawnEvent=1}] at @s run function core:handler/respawn
        execute as @a[scores={RespawnEvent=80}] at @s run function core:handler/respawn.delay
        execute as @a[advancements={core:handler/attack=true}] at @s run function core:handler/attack
        execute as @a[advancements={core:handler/damage=true}] at @s run function core:handler/damage
        execute as @a[advancements={core:handler/killed=true}] at @s run function core:handler/killed
        execute as @a[scores={ClickCarrotEvent=1..}] at @s run function core:handler/click.carrot

    # 満腹度調整部
        execute as @a[tag=AdjustHunger] unless predicate lib:is_death run function player_manager:adjust_hunger/observe