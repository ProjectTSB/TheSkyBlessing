#> asset:mob/0022.red_knight/tick/wait_time/opening/battle_start
#
#
#
# @within function asset:mob/0022.red_knight/tick/wait_time/opening/tick

# タグ調整
    tag @s remove M.Opening

# フェイズ加算
    scoreboard players add @s M.Phase 1

# 無敵とNoAI解除
    data modify entity @s Invulnerable set value 0b
    data modify entity @s NoAI set value 0b

# スコアセット
    scoreboard players reset @s M.Tick
    #scoreboard players set @s M.LoopCount 0

# 移動する
    #scoreboard players set @s M.Speed 10
    function asset:mob/0022.red_knight/tick/reset