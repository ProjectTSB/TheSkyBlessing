#> asset:mob/0185.tutankhamen/tick/magic_square/01.main
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/04.attack_branch

# 予備動作的な
    execute if score @s 55.Tick matches 80 run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0

# 隙だらけなので耐性
    effect give @s resistance 1 2 true

# 魔方陣展開
    execute if score @s 55.Tick matches 110..111 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/02.1st_square
    execute if score @s 55.Tick matches 125..126 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/03.2nd_square
    execute if score @s 55.Tick matches 140..141 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/04.3rd_square
    execute if score @s 55.Tick matches 155..156 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/05.4th_square
    execute if score @s 55.Tick matches 170..171 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/06.5th_square

# リセット
    execute if score @s 55.Tick matches 200.. run function asset:mob/0185.tutankhamen/tick/05.reset