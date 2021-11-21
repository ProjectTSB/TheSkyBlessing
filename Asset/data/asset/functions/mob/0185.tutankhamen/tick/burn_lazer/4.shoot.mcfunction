#> asset:mob/0185.tutankhamen/tick/burn_lazer/4.shoot
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_lazer/1.main
#   asset:mob/0185.tutankhamen/tick/burn_lazer/3.shoot

# 音
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 0.7 0

# 発射
    execute positioned ~ ~1.3 ~ run function asset:mob/0185.tutankhamen/tick/burn_lazer/5.shoot_recursive

# 技用スコアリセット
    scoreboard players reset @s 55.AttackTick