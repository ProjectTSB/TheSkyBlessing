#> asset:mob/0185.tutankhamen/tick/magic_square/1.main
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/4.attack_branch

# 予備動作的な
    execute if score @s 55.Tick matches 100 run playsound block.portal.trigger master @a ~ ~ ~ 0.5 2 0

# 魔方陣展開
    execute if score @s 55.Tick matches 130..131 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/2.1st_vfx
    execute if score @s 55.Tick matches 145..146 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/3.2nd_vfx
    execute if score @s 55.Tick matches 160..161 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/4.3rd_vfx
    execute if score @s 55.Tick matches 175..176 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/5.4th.5th_vfx
    execute if score @s 55.Tick matches 190..191 positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/6.5th_vfx

# リセット
    execute if score @s 55.Tick matches 200.. run function asset:mob/0185.tutankhamen/tick/5.reset