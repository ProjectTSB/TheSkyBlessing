#> asset:mob/0129.lexiel/tick/2.8.skill_magic_bullet
#
#　弾の再起部分（ヘトゥケダゥのやつとほぼ一緒）
#
# @within function asset:mob/0129.lexiel/tick/2.7.skill_magic

# 着弾検知
    execute if entity @e[type=player,gamemode=!spectator,distance=..1.7] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @e[type=player,gamemode=!spectator,distance=..1.7] run tag @e[type=player,gamemode=!spectator,distance=..1.7,limit=1] add LandingTarget

# 演出
    particle dust 0.784 0.435 1 1 ~ ~ ~ 0.2 0.2 0.2 0 6
    playsound item.trident.return master @a ~ ~ ~ 1 0
    playsound item.chorus_fruit.teleport master @p ~ ~ ~ 0.6 2.0
    playsound entity.blaze.shoot master @a ~ ~ ~ 0.4 2

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0129.lexiel/tick/2.9.skill_magic_damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0129.lexiel/tick/2.8.skill_magic_bullet