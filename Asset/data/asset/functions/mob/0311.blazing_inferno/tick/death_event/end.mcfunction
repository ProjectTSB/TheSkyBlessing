#> asset:mob/0311.blazing_inferno/tick/death_event/end
#
# 派手に爆散して終わる
#
# @within function asset:mob/0311.blazing_inferno/tick/death_event/tick


# サウンド
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 3 0.8
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.5

# パーティクル
    particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..60]
    particle minecraft:cloud ~ ~1 ~ 1 1 1 0.1 50

# 自分を消す
    function animated_java:blazing_inferno/remove/this