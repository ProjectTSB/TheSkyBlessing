#> asset:mob/0234.walleye/tick/jet_start
#
# ドゴオオ！
#
# @within function asset:mob/0234.walleye/tick/2.1.search

# サウンド
    playsound minecraft:block.note_block.bell hostile @a[distance=..32] ~ ~ ~ 3 1.334840 1
    playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1.5

# パーティクル
    execute positioned ~ ~1.5 ~ positioned ^ ^ ^-1 run particle lava ~ ~ ~ 0 0 0 0 10
    execute positioned ~ ~1.5 ~ positioned ^ ^ ^-1 run particle explosion ~ ~ ~ 0 0 0 0 10