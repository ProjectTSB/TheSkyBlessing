#> asset:mob/0245.fire_creeper/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0245.fire_creeper/tick/1.trigger
#> tag
# @private
    #declare tag ScoreAdd

# プレイヤーが周囲にいたら発動
    execute if entity @p[distance=..3] run tag @s add ScoreAdd
# プレイヤーが一度近づいてスコアを持っている状態だとして、視界内にプレイヤーがいたらそのままカウントをすすめる
    execute if score @s 6T.FuseTime matches 1.. positioned ^ ^ ^6 if entity @p[distance=..6] run tag @s add ScoreAdd

# プレイヤーを検知できたらスコアを上げる
    execute if entity @s[tag=ScoreAdd] run scoreboard players add @s 6T.FuseTime 1

# プレイヤーが周囲にいないとリセット
    execute unless entity @s[tag=ScoreAdd] run scoreboard players reset @s 6T.FuseTime

# タグを消す
    tag @s remove ScoreAdd

# 一定時間で爆破
    execute if score @s 6T.FuseTime matches 30.. run function asset:mob/0245.fire_creeper/tick/3.explosion