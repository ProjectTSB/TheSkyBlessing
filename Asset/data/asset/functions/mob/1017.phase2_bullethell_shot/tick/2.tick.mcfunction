#> asset:mob/1017.phase2_bullethell_shot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1017.phase2_bullethell_shot/tick/1.trigger

# スコア加算
    scoreboard players add @s S9.Tick 1

# 範囲内ならホーミングじみた移動
    #execute if score @s S9.Tick matches ..60 facing entity @p[distance=..30] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-3000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.3 ~ ~

# 前進
    execute if score @s S9.Tick matches 10 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    execute if score @s S9.Tick matches 10.. run function asset:mob/1017.phase2_bullethell_shot/tick/3.move

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/1017.phase2_bullethell_shot/tick/5.hit

# 時間で消える
    execute if score @s S9.Tick matches 60.. run kill @s