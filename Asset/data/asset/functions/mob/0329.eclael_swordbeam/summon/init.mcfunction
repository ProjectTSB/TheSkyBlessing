#> asset:mob/0329.eclael_swordbeam/summon/init
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within function asset:mob/0329.eclael_swordbeam/summon/2.summon

# 角度調整
    tp @s ~ ~ ~ ~ ~

# スコア初期化
    scoreboard players set @s 95.Timer 0
    scoreboard players set @s 95.DamageInterval 4
