#> asset:mob/0047.the_heretic/attack/2.1.first_attack
#
# 1度だけ発動する攻撃
#
# @within function asset:mob/0047.the_heretic/attack/2.attack

# テレポートする
    execute as @s at @e[type=#lib:living,tag=Victim] rotated ~ -10 positioned ^ ^ ^3 facing entity @e[type=#lib:living,tag=Victim] eyes run tp @s ~ ~ ~

# 装備変更
    replaceitem entity @s weapon stick{CustomModelData:219}

# 移動する
    scoreboard players set $VectorMagnitude Lib 200
    execute as @s at @s facing entity @e[type=#lib:living,tag=Victim] feet run function lib:motion/