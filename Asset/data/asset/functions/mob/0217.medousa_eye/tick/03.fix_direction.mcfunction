#> asset:mob/0217.medousa_eye/tick/03.fix_direction
#
# ビームの向きを決定します
#
# @within function asset:mob/0217.medousa_eye/tick/2.tick

#> Private
# @private
    #declare tag Target

# NoAI
    data modify entity @s NoAI set value 1b

# プレイヤーを見る
    execute positioned ^ ^ ^10 run tag @p[gamemode=!spectator,tag=!61.Stone,distance=..10] add Target
    tp @s ~ ~ ~ facing entity @p[tag=Target,distance=..20] feet

# タグ削除
    tag @a[tag=Target,distance=..20] remove Target

# 演出
    execute positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/04.vfx