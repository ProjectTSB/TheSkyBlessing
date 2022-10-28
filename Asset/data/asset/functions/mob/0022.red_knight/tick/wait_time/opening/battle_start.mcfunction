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

# 移動する
    function asset:mob/0022.red_knight/tick/reset
    function asset:mob/0022.red_knight/tick/wait_time/base_move/ready_dash