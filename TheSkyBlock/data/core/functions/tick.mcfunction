#> core:tick
#
# #tick時に毎回実行される処理群
#
# ここには多くの処理を書かないこと
#
# @within tag/function minecraft:tick

# Triggers
    execute as @a[scores={FirstJoinEvent=1}] run function core:handler/first_join
    execute as @a[scores={RejoinEvent=1..}] run function core:handler/rejoin
    execute as @a[scores={DeathEvent=1..}] run function core:handler/death
    execute as @a[scores={RespawnEvent=1}] run function core:handler/respawn