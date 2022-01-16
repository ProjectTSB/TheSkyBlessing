#> asset:mob/example/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/example/attack/1.trigger

tellraw @a [{"selector":"@a[tag=Victim]"},{"text":"なんて死んじゃえ！"}]