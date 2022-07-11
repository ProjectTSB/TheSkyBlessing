#> asset:mob/0174.burning_blaze/action/laser.tick
#
#
#
# @within function asset:mob/0174.burning_blaze/tick/2.tick

# スコア減らす
    scoreboard players remove @s 4U.ActionTime 1

# プレイヤーへの警告表示
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..32] feet anchored eyes run function asset:mob/0174.burning_blaze/action/laser.line

# スコアがなくなったら発動
    execute if score @s 4U.ActionTime matches ..0 run function asset:mob/0174.burning_blaze/action/laser.shot