#> asset:mob/0185.tutankhamen/tick/4.attack_branch
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/2.tick

# 炎レーザー
    execute if entity @s[tag=55.BurnLazer] run function asset:mob/0185.tutankhamen/tick/burn_lazer/1.main

# 雷落とし
    execute if entity @s[tag=55.Thunder] run function asset:mob/0185.tutankhamen/tick/thunder/1.main