#> asset:mob/0185.tutankhamen/tick/warp_attack/01.main
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/04.attack_branch

# ワープするまでパーティクルと耐性2
    effect give @s resistance 1 1 true
    particle witch ~ ~1.2 ~ 0.4 0.4 0.4 0 10 normal @a

# ワープ
    execute if score @s 55.Tick matches 130.. run function asset:mob/0185.tutankhamen/tick/warp_attack/02.warp