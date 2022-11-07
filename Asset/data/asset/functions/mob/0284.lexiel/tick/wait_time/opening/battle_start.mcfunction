#> asset:mob/0284.lexiel/tick/wait_time/opening/battle_start
#
# 戦闘開始する
#
# @within function asset:mob/0284.lexiel/tick/wait_time/opening/tick

# タグ調整
    tag @s remove 7W.Opening

# 無敵解除
    data modify entity @s Invulnerable set value 0b

# スコアセット
    scoreboard players reset @s 7W.Tick
    scoreboard players set @s 7W.LoopCount 0

# 移動する
    scoreboard players set @s 7W.Speed 10
    function asset:mob/0284.lexiel/tick/reset