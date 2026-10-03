#> effect_test:benchmark/summon
# @private

summon minecraft:armor_stand 0 0 0 {Tags:["EffectTest.Bench","EffectTest.Fresh","AlreadyInitMob","HasAssetEffect"],Marker:1b,Invulnerable:1b,NoGravity:1b}
execute as @e[tag=EffectTest.Fresh,limit=1] run function effect_test:benchmark/init_owner
scoreboard players remove $BenchOwners Temporary 1
execute if score $BenchOwners Temporary matches 1.. run function effect_test:benchmark/summon
