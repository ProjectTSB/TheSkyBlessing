#> asset:mob/0022.red_knight/tick/skills/heavy_slashwave/5.slashwave_spawn_sfx
#
# 斬撃が出る時の演出
#
# @within function
#   asset:mob/0022.red_knight/tick/skills/heavy_slashwave/4.wave_type1
#   asset:mob/0022.red_knight/tick/skills/heavy_slashwave/4.wave_type2
#   asset:mob/0022.red_knight/tick/skills/heavy_slashwave/4.wave_type3
# パーティクル
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 20
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1

#

# サウンド
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.8
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 1.7