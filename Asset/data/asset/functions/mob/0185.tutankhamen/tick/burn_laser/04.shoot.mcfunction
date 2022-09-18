#> asset:mob/0185.tutankhamen/tick/burn_laser/04.shoot
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_laser/01.main
#   asset:mob/0185.tutankhamen/tick/burn_laser/03.shoot

# 音
    playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 0.7 0

# 発射
    execute positioned ~ ~1.3 ~ run function asset:mob/0185.tutankhamen/tick/burn_laser/05.shoot_recursive

# ダメージ
    execute if entity @a[tag=LandingTarget,distance=..32] run function asset:mob/0185.tutankhamen/tick/burn_laser/06.damage

# 技用スコアリセット
    scoreboard players reset @s 55.AttackTick