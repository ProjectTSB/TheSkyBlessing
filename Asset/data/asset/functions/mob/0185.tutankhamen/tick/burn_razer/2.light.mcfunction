#> asset:mob/0185.tutankhamen/tick/burn_razer/2.light
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_razer/1.main

# lightは照射の意

# プレイヤーの方向を見る
    execute if score @s 55.AttackTick matches 1 run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] feet

# 照射
    execute positioned ~ ~1.5 ~ run function asset:mob/0185.tutankhamen/tick/burn_razer/3.light_recursive

# 実行中の音
    playsound block.note_block.bit master @a ~ ~ ~ 1 1