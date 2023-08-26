#> asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
#
# ビーム発射
#
# @within function
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/tick
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/tick_hard

# 演出
    playsound tsb_sounds:blaster2 hostile @a ~ ~ ~ 2 2
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 2

# 再帰スタート
    function asset:mob/0055.hetukedah/tick/skill/otete_beam/beam/