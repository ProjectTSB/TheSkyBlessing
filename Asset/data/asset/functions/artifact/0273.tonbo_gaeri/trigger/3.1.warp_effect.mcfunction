#> asset:artifact/0273.tonbo_gaeri/trigger/3.1.warp_effect
#
# ワープ時のパーティクルと音 ワープ前の位置とワープ後の位置で実行される
#
# @within function asset:artifact/0273.tonbo_gaeri/trigger/3.main

# ワープのエフェクト
    particle explosion ~ ~1 ~ 0 0 0 0 0
    particle sweep_attack ~ ~1 ~ 0 0 0 0 0
    particle dust 0 1 0.5 1 ~ ~1 ~ 0.25 0.5 0.25 0 20
    playsound minecraft:entity.silverfish.death player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 2 1