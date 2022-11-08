#> asset:mob/0022.red_knight/death/death_animation
#
#
#
# @within function asset:mob/0022.red_knight/death/death_tick

# 正常な描画をさせる
    data modify entity @s Air set value 0

# スコア加算
    scoreboard players add @s M.Tick 1
    scoreboard players add @s M.DeathExplosion 1

# パーティクル
    particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]

# 爆発(最初のほう)
    execute if entity @s[scores={M.Tick=15..60,M.DeathExplosion=5..}] run function asset:mob/0022.red_knight/death/explosion

# プレイヤーから離れていく
    #execute if score @s M.Tick matches ..60 facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^-0.05

# 立て直す
    execute if score @s M.Tick matches 80 run function asset:mob/0022.red_knight/death/change_pose_1

# 糸を取り出す
    execute if score @s M.Tick matches 120 run function asset:mob/0022.red_knight/death/change_pose_2

# ワープ準備パーティクル
    execute if score @s M.Tick matches 120.. run particle minecraft:dust 0.765 0 1 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 1

# 撤退演出実行
    execute if score @s M.Tick matches 180 run function asset:mob/0022.red_knight/death/end
