#> asset:mob/0328.eclael_arrow/summon/init
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within function asset:mob/0328.eclael_arrow/summon/2.summon

# 角度調整
    tp @s ~ ~ ~ ~ ~

# スコア初期化
    scoreboard players set @s 94.Timer 0
    scoreboard players set @s 94.DamageInterval 0
