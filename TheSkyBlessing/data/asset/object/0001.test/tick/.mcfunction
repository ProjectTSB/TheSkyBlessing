#> asset:object/0001.test/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1/tick

# Tick加算
   scoreboard players add @s Generic.Object.Tick 1

# 消滅処理
   kill @s[scores={Generic.Object.Tick=1000..}]