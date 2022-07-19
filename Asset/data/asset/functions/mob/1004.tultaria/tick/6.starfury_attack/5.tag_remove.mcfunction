#> asset:mob/1004.tultaria/tick/6.starfury_attack/5.tag_remove
#
# スターフューリーのタグを消すことで動作させる（付与でもいいだろ）
#
# @within function asset:mob/1004.tultaria/tick/6.starfury_attack/1.starfury_attack

# プレイヤーの向きを向かせる
    tp @s ~ ~ ~ facing entity @p[distance=..100]
# タグを消す
    tag @s remove S2.Wait
# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 4 2
    execute at @a[distance=..50] run playsound minecraft:block.amethyst_block.hit hostile @a ~ ~ ~ 1 1.5
