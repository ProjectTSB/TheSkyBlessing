#> asset:mob/0185.tutankhamen/tick/04.attack_branch
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/2.tick

# 炎レーザー
    execute if entity @s[tag=55.BurnLaser] run function asset:mob/0185.tutankhamen/tick/burn_laser/01.main

# 雷落とし
    execute if entity @s[tag=55.Thunder] run function asset:mob/0185.tutankhamen/tick/thunder/01.main

# 魔方陣展開
    execute if entity @s[tag=55.MagicSquare] run function asset:mob/0185.tutankhamen/tick/magic_square/01.main

# ワープからの魔方陣展開
    execute if entity @s[tag=55.WarpAttack] run function asset:mob/0185.tutankhamen/tick/warp_attack/01.main