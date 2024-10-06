#> asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot
#
# でかビーム発射
#
# @within function
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/tick
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/tick_hard

# 演出
    playsound tsb_sounds:blaster2 hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1.5 1.5
    execute positioned ^ ^ ^1 rotated ~ ~90 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/ring_particle

# 再帰スタート
    function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_beam/