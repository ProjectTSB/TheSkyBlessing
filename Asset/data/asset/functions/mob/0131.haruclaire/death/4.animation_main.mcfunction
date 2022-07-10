#> asset:mob/0131.haruclaire/death/4.animation_main
#
#
#
# @within function asset:mob/0131.haruclaire/death/3.animation_schedule_loop


# スコアを増やしていく
    scoreboard players add @s 3N.Tick 1

# 以下アニメーション

# 氷を出しまくる
    execute if score @s 3N.Tick matches 1 positioned ~0.6 ~-1.5 ~0.4 run function asset:mob/0131.haruclaire/death/5.ice_summon
    execute if score @s 3N.Tick matches 5 positioned ~0.4 ~-1.5 ~0.4 run function asset:mob/0131.haruclaire/death/5.ice_summon
    execute if score @s 3N.Tick matches 10 positioned ~0.3 ~-1.4 ~-0.2 run function asset:mob/0131.haruclaire/death/5.ice_summon
    execute if score @s 3N.Tick matches 12 positioned ~-0.5 ~-1 ~0.2 run function asset:mob/0131.haruclaire/death/5.ice_summon
    execute if score @s 3N.Tick matches 14 positioned ~-0.3 ~-0.9 ~-0.1 run function asset:mob/0131.haruclaire/death/5.ice_summon
    execute if score @s 3N.Tick matches 16 positioned ~0.2 ~-0.8 ~0.1 run function asset:mob/0131.haruclaire/death/5.ice_summon
    execute if score @s 3N.Tick matches 18 positioned ~-0.1 ~-0.6 ~-0.2 run function asset:mob/0131.haruclaire/death/5.ice_summon
    execute if score @s 3N.Tick matches 20 positioned ~0.1 ~-0.4 ~0 run function asset:mob/0131.haruclaire/death/5.ice_summon

# 完全凍結
    execute if score @s 3N.Tick matches 50 run function asset:mob/0131.haruclaire/death/6.freeze

# 氷を消す
    execute if score @s 3N.Tick matches 100 run function asset:mob/0131.haruclaire/death/7.ice_kill

# ボスドロ
    execute if score @s 3N.Tick matches 100 run function asset:mob/0131.haruclaire/death/boss_drop

# 終了
    execute if score @s 3N.Tick matches 100 run kill @s
