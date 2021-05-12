#> asset:mob/example/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/example/hurt/1.trigger

tellraw @a [{"selector":"@a[tag=Attacker]"},{"text":"痛いよ..."}]