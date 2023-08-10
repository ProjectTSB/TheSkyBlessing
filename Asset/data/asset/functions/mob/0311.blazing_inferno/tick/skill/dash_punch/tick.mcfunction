#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick
#
# ダッシュパンチ
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active


# パンチのかまえ
    execute if score @s 8N.Tick matches 20 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/windup

# 手が震える
    execute if score @s 8N.Tick matches 35 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/dash_charge/play

# 殴る
    execute if score @s 8N.Tick matches 60 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/active

# ダッシュパンチ移動
    execute if score @s 8N.Tick matches 60..80 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move_stacked

# ブロックに触れたら強制停止
    execute if score @s 8N.Tick matches 60..80 at @s unless block ^ ^ ^1 #lib:no_collision run scoreboard players set @s 8N.Tick 80
    execute if score @s 8N.Tick matches 60..80 at @s unless block ^ ^ ^2 #lib:no_collision run scoreboard players set @s 8N.Tick 80

# ダッシュ終了
    execute if score @s 8N.Tick matches 80 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/end

# 元の地点に戻る
    execute if score @s 8N.Tick matches 150 at @s run function asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail

# リセット
    execute if score @s 8N.Tick matches 150 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
