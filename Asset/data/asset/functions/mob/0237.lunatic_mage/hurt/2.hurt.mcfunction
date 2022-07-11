#> asset:mob/0237.lunatic_mage/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0237.lunatic_mage/hurt/1.trigger

# 演出
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 1 2

# 体力が40%であることを検知
    execute if entity @s[tag=!6L.HealthLess40Per] run function asset:mob/0237.lunatic_mage/hurt/3.check_health