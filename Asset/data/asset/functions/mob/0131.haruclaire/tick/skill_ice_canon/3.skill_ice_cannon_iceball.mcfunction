#> asset:mob/0131.haruclaire/tick/skill_ice_canon/3.skill_ice_cannon_iceball
#
#
#
# @within function asset:mob/0131.haruclaire/tick/skill_ice_canon/2.skill_ice_cannon_nohit

# 演出
    particle minecraft:block blue_ice ~ ~ ~ 0.2 0.2 0.2 1 20
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
    particle dust 1 1000000000 1000000000 1 ~ ~ ~ 0.3 0.3 0.3 1 40 normal @a

# 攻撃があたった時
    execute if entity @a[gamemode=!spectator,distance=..2] run function asset:mob/0131.haruclaire/tick/skill_ice_canon/4.skill_ice_cannon_hit