#> asset:artifact/0758.sina_tk/trigger/bullet/main
#
#
#
# @within function asset:artifact/0758.sina_tk/trigger/bullet/loop

# 演出
    playsound block.bamboo.break neutral @a ~ ~ ~ 1 1 0

# スコア
    scoreboard players add @s L2.Tick 1

# 再帰処理で前方に進む
    function asset:artifact/0758.sina_tk/trigger/bullet/recursive
    scoreboard players reset $Rucursive Temporary

# 消滅
    execute unless block ~ ~ ~ #lib:no_collision run kill @s
    execute if entity @s[scores={L2.Tick=16..}] run kill @s

# スケジュールループ
    schedule function asset:artifact/0758.sina_tk/trigger/bullet/loop 1t replace