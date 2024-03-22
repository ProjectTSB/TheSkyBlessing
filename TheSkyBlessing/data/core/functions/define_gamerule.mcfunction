#> core:define_gamerule
#
# gameruleを定義します
#
# @within function core:load_once

gamerule announceAdvancements true
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
execute if data storage global {IsProduction:1b} run gamerule doDaylightCycle true
execute if data storage global {IsProduction:0b} run gamerule doDaylightCycle false
gamerule doEntityDrops true
execute if data storage global {IsProduction:1b} run gamerule doFireTick true
execute if data storage global {IsProduction:0b} run gamerule doFireTick false
gamerule doImmediateRespawn false
execute if data storage global {IsProduction:1b} run gamerule doInsomnia true
execute if data storage global {IsProduction:0b} run gamerule doInsomnia false
gamerule doLimitedCrafting false
gamerule doMobLoot true
execute if data storage global {IsProduction:1b} run gamerule doMobSpawning true
execute if data storage global {IsProduction:0b} run gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops true
gamerule doTraderSpawning false
execute if data storage global {IsProduction:1b} run gamerule doWeatherCycle true
execute if data storage global {IsProduction:0b} run gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage false
gamerule fireDamage true
gamerule forgiveDeadPlayers false
gamerule keepInventory true
execute if data storage global {IsProduction:1b} run gamerule logAdminCommands false
execute if data storage global {IsProduction:0b} run gamerule logAdminCommands true
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
gamerule maxEntityCramming 24
execute if data storage global {IsProduction:1b} run gamerule mobGriefing true
execute if data storage global {IsProduction:0b} run gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule playersNetherPortalCreativeDelay 1
execute if data storage global {IsProduction:1b} run gamerule playersNetherPortalDefaultDelay 80
execute if data storage global {IsProduction:0b} run gamerule playersNetherPortalDefaultDelay 1
execute if data storage global {IsProduction:1b} run gamerule projectilesCanBreakBlocks true
execute if data storage global {IsProduction:0b} run gamerule projectilesCanBreakBlocks false
gamerule randomTickSpeed 3
execute if data storage global {IsProduction:1b} run gamerule reducedDebugInfo true
execute if data storage global {IsProduction:0b} run gamerule reducedDebugInfo false
execute if data storage global {IsProduction:1b} run gamerule sendCommandFeedback false
execute if data storage global {IsProduction:0b} run gamerule sendCommandFeedback true
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule universalAnger false