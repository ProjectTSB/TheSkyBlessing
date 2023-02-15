#> asset:mob/308.brave_arrow/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/308.brave_arrow/tick/1.trigger

# 飛ぶ
    execute facing entity @e[type=#lib:living,tag=Enemy,distance=..30,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-900 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    function asset:mob/308.brave_arrow/tick/event/move

# ライフタイム周り
    # スコア減らす
        scoreboard players remove @s 8K.LifeTime 1
    # 0で消える
        execute if score @s 8K.LifeTime matches ..0 run kill @s