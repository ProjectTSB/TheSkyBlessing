#> asset:mob/0185.tutankhamen/tick/warp_attack/01.main
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/04.attack_branch

# ワープするまでパーティクル
    particle witch ~ ~1.2 ~ 0.4 0.4 0.4 0 10 normal @a

# ワープ
    execute if entity @s[scores={55.Tick=50..}] run function asset:mob/0185.tutankhamen/tick/warp_attack/02.warp