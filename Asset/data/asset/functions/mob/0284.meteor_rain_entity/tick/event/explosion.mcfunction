#> asset:mob/0284.meteor_rain_entity/tick/event/explosion
#
#
#
# @within function asset:mob/0284.meteor_rain_entity/tick/2.tick

# 効果音
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 2 0.7

# 爆発
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    particle flame ~ ~ ~ 1.5 1.5 1.5 0 20

# 消滅
    kill @s