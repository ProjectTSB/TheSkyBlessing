#> asset:mob/0331.blazing_inferno/tick/skill/dash_punch/tick
#
# ダッシュパンチ
#
# @within function asset:mob/0331.blazing_inferno/tick/skill_active


# パンチのかまえ
    execute if score @s 8N.Tick matches 20 run function asset:mob/0331.blazing_inferno/tick/skill/dash_punch/windup

# 手が震える
    execute if score @s 8N.Tick matches 35 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/dash_charge/play

# 殴る
    execute if score @s 8N.Tick matches 60 run function asset:mob/0331.blazing_inferno/tick/skill/dash_punch/active

# ダッシュパンチ移動
    execute if score @s 8N.Tick matches 60..70 run function asset:mob/0331.blazing_inferno/tick/skill/dash_punch/move_stacked

# ブロックに触れたら強制停止
    execute if score @s 8N.Tick matches 60..70 unless block ^ ^ ^4 #lib:no_collision run scoreboard players set @s 8N.Tick 70

# ダッシュ終了
    execute if score @s 8N.Tick matches 70 run function asset:mob/0331.blazing_inferno/tick/skill/dash_punch/end

# 元の地点に戻る
    execute if score @s 8N.Tick matches 140 at @s run function asset:mob/0331.blazing_inferno/tick/skill/dash_punch/return

# リセット
    execute if score @s 8N.Tick matches 140 run function asset:mob/0331.blazing_inferno/tick/reset
