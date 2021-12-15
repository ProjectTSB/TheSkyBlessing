#> asset:mob/0185.tutankhamen/tick/magic_square/01.main
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/04.attack_branch

# 予備動作的な
    execute if score @s 55.Tick matches 100 run playsound block.portal.trigger master @a ~ ~ ~ 0.5 2 0

# 魔方陣展開
    execute if score @s 55.Tick matches 130..131 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/02.1st_square
    execute if score @s 55.Tick matches 145..146 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/03.2nd_square
    execute if score @s 55.Tick matches 160..161 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/04.3rd_square
    execute if score @s 55.Tick matches 175..176 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/05.4th_square
    execute if score @s 55.Tick matches 190..191 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/06.5th_square

# リセット
    execute if score @s 55.Tick matches 200.. run function asset:mob/0185.tutankhamen/tick/05.reset