#> asset:mob/65534.example_1/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/65534/attack

tellraw @a [{"selector":"@a[tag=Victim]"},{"text":"に攻撃を当てたぞ！"}]
