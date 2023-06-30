#> asset:mob/0139.blast_eye/tick/hard_effects
#
# ハード限定の処理
#
# @within function asset:mob/0139.blast_eye/tick/2.1.1.prepare

# ハード以上なら移動速度上昇と耐性を得る
    effect give @s speed 1 2 true
    effect give @s resistance 1 7 true