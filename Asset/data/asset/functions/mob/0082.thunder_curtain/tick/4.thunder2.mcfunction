#> asset:mob/0082.thunder_curtain/tick/4.thunder2
#
# 演出とダメージ対象の決定
#
# @within function asset:mob/0082.thunder_curtain/tick/3.thunder1

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.2 2.5 0.2 0 50
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 1
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.15 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.15 0 0

# 範囲内のプレイヤーにTagを付与する
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~1.2 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~2.4 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~3.6 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~4.8 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
