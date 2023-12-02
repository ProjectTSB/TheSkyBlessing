#> player_manager:god/nyaptov/passive
#
#
#
# @within function player_manager:god/tick

#> 落下距離
# @private
    #declare score_holder $FallDistance
    #declare tag SlowFalling

# 着地チェック
    execute if entity @s[tag=SlowFalling] run function api:data_get/on_ground
    execute if entity @s[tag=SlowFalling] if data storage api: {OnGround:1b} run tag @s remove SlowFalling
# 25m落下チェック
    execute unless entity @s[tag=SlowFalling] run function api:data_get/fall_distance
    execute unless entity @s[tag=SlowFalling] store result score $FallDistance Temporary run data get storage api: FallDistance
    execute unless entity @s[tag=SlowFalling] if entity @s[tag=Nyaptov.FlyingElytra] run scoreboard players reset $FallDistance Temporary
    execute unless entity @s[tag=SlowFalling] if score $FallDistance Temporary matches 25.. run tp @s @s
    execute unless entity @s[tag=SlowFalling] if score $FallDistance Temporary matches 25.. run particle cloud ~ ~ ~ 0.3 0.2 0.3 0 10 normal
    execute unless entity @s[tag=SlowFalling] if score $FallDistance Temporary matches 25.. run tag @s add SlowFalling
# SlowFallingタグが付与されているなら効果を付与
    execute if entity @s[tag=SlowFalling] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"slow_falling",amplifier:0b,duration:5,show_particles:0b}]}
# リセット
    scoreboard players reset $FallDistance Temporary
    tag @s[tag=Nyaptov.FlyingElytra] remove Nyaptov.FlyingElytra