#> asset:mob/0185.tutankhamen/tick/magic_square/01.main
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/04.attack_branch

# 予備動作的な
    execute if entity @s[scores={55.Tick=0}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0

# 隙だらけなので耐性
    effect give @s resistance 1 2 true

# 魔方陣展開
    execute if entity @s[scores={55.Tick=30..31}] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/02.1st_square
    execute if entity @s[scores={55.Tick=45..46}] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/03.2nd_square
    execute if entity @s[scores={55.Tick=60..61}] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/04.3rd_square
    execute if entity @s[scores={55.Tick=75..76}] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/05.4th_square
    execute if entity @s[scores={55.Tick=90..91}] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0185.tutankhamen/tick/magic_square/06.5th_square

# リセット
    execute if entity @s[scores={55.Tick=120..}] run function asset:mob/0185.tutankhamen/tick/05.reset