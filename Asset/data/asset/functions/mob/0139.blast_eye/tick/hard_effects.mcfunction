#> asset:mob/0139.blast_eye/tick/hard_effects
#
# ハード限定の処理
#
# @within function asset:mob/0139.blast_eye/tick/2.1.1.prepare

#> Private
# @private
    #declare score_holder $Difficulty

# 難度値を取得
    execute store result score $Difficulty Temporary run function api:global_vars/get_difficulty

# ハード以上なら移動速度上昇と耐性を得る
    execute if score $Difficulty Temporary matches 3.. run effect give @s speed 2 2 true
    execute if score $Difficulty Temporary matches 3.. run effect give @s resistance 2 1 true

# リセット
    scoreboard players reset $Difficulty Temporary