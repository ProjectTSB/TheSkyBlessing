#> core:define_gamerule
#
# gameruleを定義します
#
# @within function core:load_once

gamerule announceAdvancements true
gamerule blockExplosionDropDecay true
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 32768
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
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops true
gamerule doTraderSpawning false
execute if data storage global {IsProduction:1b} run gamerule doVinesSpread true
execute if data storage global {IsProduction:0b} run gamerule doVinesSpread false
gamerule doWardenSpawning true
execute if data storage global {IsProduction:1b} run gamerule doWeatherCycle true
execute if data storage global {IsProduction:0b} run gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage false
gamerule fireDamage true
gamerule forgiveDeadPlayers false
gamerule globalSoundEvents true
gamerule keepInventory true
gamerule lavaSourceConversion false
execute if data storage global {IsProduction:1b} run gamerule logAdminCommands false
execute if data storage global {IsProduction:0b} run gamerule logAdminCommands true
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
gamerule maxEntityCramming 24
gamerule mobExplosionDropDecay true
execute if data storage global {IsProduction:1b} run gamerule mobGriefing true
execute if data storage global {IsProduction:0b} run gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule playersSleepingPercentage 100
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
execute if data storage global {IsProduction:1b} run gamerule snowAccumulationHeight 1
execute if data storage global {IsProduction:0b} run gamerule snowAccumulationHeight 0
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule tntExplosionDropDecay false
gamerule universalAnger false
gamerule waterSourceConversion true
