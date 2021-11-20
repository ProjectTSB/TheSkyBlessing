#> asset:mob/0185.tutankhamen/tick/burn_razer/4.shoot
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_razer/1.main
#   asset:mob/0185.tutankhamen/tick/burn_razer/3.shoot

# 音
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 0.7 0

# 発射
    execute positioned ~ ~1.5 ~ run function asset:mob/0185.tutankhamen/tick/burn_razer/5.shoot_recursive


# 技用スコアリセット
    scoreboard players reset @s 55.AttackTick