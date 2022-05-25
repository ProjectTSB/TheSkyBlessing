#> asset:mob/0245.fire_creeper/tick/3.explosion
#
#
#
# @within function asset:mob/0245.fire_creeper/tick/2.tick

# 火を撒く(サバイバルのみで発動。アドベンチャーで出さないこと前提)
    execute if predicate world_manager:area/02.islands run function asset:mob/0245.fire_creeper/tick/4.fire_summon

# 演出
    particle explosion_emitter ~ ~ ~ 0 0 0 1 2
    playsound entity.generic.explode hostile @a ~ ~ ~

# 自殺
    tp ~ -500 ~
    kill @s