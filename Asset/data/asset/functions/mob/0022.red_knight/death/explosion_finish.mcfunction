#> asset:mob/0022.red_knight/death/explosion_finish
#
# 締めの大爆発
#
# @within function asset:mob/0022.red_knight/death/4.death_animation

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 1
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 1
    particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:lava ~ ~1 ~ 1 1 1 0.1 20
    particle minecraft:large_smoke ~ ~1 ~ 0.2 0.2 0.2 0.2 100

# 画面エフェクト
    title @a[distance=..30] times 5 15 20
    title @a[distance=..30] title {"text":"\uE010","font":"screen_effect"}

# ボスドロ
    data modify storage api: Argument.ID set value 364
    data modify storage api: Argument.Important set value true
    function api:sacred_treasure/spawn/from_id

# 消滅
    kill @s