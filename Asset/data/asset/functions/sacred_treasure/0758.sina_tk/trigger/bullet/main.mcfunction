#> asset:sacred_treasure/0758.sina_tk/trigger/bullet/main
#
#
#
# @within function asset:sacred_treasure/0758.sina_tk/trigger/bullet/loop

# 演出
    playsound block.bamboo.break neutral @a ~ ~ ~ 1 1 0

# スコア
    scoreboard players add @s L2.Tick 1

# 再帰処理で前方に進む
    function asset:sacred_treasure/0758.sina_tk/trigger/bullet/recursive
    scoreboard players reset $Rucursive Temporary

# ダメージ処理
    execute if entity @e[type=#lib:living,tag=Target,distance=..3,limit=1] run function asset:sacred_treasure/0758.sina_tk/trigger/bullet/hit

# 消滅
    execute unless block ~ ~ ~ #lib:no_collision run kill @s
    execute if entity @s[scores={L2.Tick=12..}] run kill @s

# スケジュールループ
    schedule function asset:sacred_treasure/0758.sina_tk/trigger/bullet/loop 1t replace