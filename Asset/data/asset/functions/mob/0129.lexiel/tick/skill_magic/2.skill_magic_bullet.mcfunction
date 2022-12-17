#> asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet
#
# 弾の再起部分（ヘトゥケダゥのやつとほぼ一緒）
#
# @within function
#   asset:mob/0129.lexiel/tick/skill_magic/1.skill_magic
#   asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet

# 着弾検知
    execute if entity @a[gamemode=!spectator,distance=..1.7] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @a[gamemode=!spectator,distance=..1.7] run tag @p[gamemode=!spectator,distance=..1.7] add LandingTarget

# 演出
    particle dust 0.784 0.435 1 1 ~ ~ ~ 0.2 0.2 0.2 0 6
    playsound item.trident.return hostile @a ~ ~ ~ 1 0
    playsound item.chorus_fruit.teleport hostile @a ~ ~ ~ 0.6 2.0
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.4 2

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0129.lexiel/tick/skill_magic/3.skill_magic_landing

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0129.lexiel/tick/skill_magic/2.skill_magic_bullet