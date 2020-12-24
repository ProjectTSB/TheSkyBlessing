#> core:tick
#
# #tick時に毎回実行される処理群
#
# ここには多くの処理を書かないこと
#
# @within tag/function minecraft:tick

# プレイヤー処理部
    # Triggers
        execute if entity @a[scores={FirstJoinEvent=1},limit=1] as @a[scores={FirstJoinEvent=1}] at @s run function core:handler/first_join
        execute if entity @a[scores={RejoinEvent=1..},limit=1] as @a[scores={RejoinEvent=1..}] at @s run function core:handler/rejoin
        execute if entity @a[scores={DeathEvent=1..},limit=1] as @a[scores={DeathEvent=1..}] at @s run function core:handler/death
        execute if entity @a[scores={RespawnEvent=1},limit=1] as @a[scores={RespawnEvent=1}] at @s run function core:handler/respawn
        execute if entity @a[scores={RespawnEvent=80},limit=1] as @a[scores={RespawnEvent=80}] at @s run function core:handler/respawn.delay
        execute if entity @a[advancements={core:handler/consume_item=true},limit=1] as @a[advancements={core:handler/consume_item=true}] at @s run function core:handler/consume_item
        execute if entity @a[advancements={core:handler/attack=true},limit=1] as @a[advancements={core:handler/attack=true}] at @s run function core:handler/attack
        execute if entity @a[advancements={core:handler/damage=true},limit=1] as @a[advancements={core:handler/damage=true}] at @s run function core:handler/damage
        execute if entity @a[advancements={core:handler/killed=true},limit=1] as @a[advancements={core:handler/killed=true}] at @s run function core:handler/killed
        execute if entity @a[scores={ClickCarrotEvent=1..}] as @a[scores={ClickCarrotEvent=1..}] at @s run function core:handler/click.carrot
    # 満腹度調整部
        execute if entity @a[tag=AdjustHunger] as @a[tag=AdjustHunger] unless predicate lib:is_death run function player_manager:adjust_hunger/observe
    # MP表示処理
        execute as @a run function player_manager:mp/viewer/check_xpbar

# Mobデータ初期化部
    execute as @e[team=!Null,type=!player,type=!armor_stand,tag=!AlreadyInitMob] run function mob_manager:detect_hurt_entity/set_flag