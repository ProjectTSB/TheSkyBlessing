#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/tick
#
# 眼の前に現れてラッシュパンチ
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# 眼の前に出てくる
    execute if score @s 8N.Tick matches 20 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/warp

# ゆっくりと向きを変える
    execute if entity @s[scores={8N.Tick=20..50}] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# ラッシュパンチのアニメ再生
    execute if score @s 8N.Tick matches 50 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/rush_loop/play

# 攻撃判定
    execute if score @s 8N.Tick matches 50..60 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch

# ラッシュ終了
    execute if score @s 8N.Tick matches 60 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/end

# 元の地点に戻る
    execute if score @s 8N.Tick matches 100 at @s run function asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail

# リセット
    execute if score @s 8N.Tick matches 100 run function asset:mob/0311.blazing_inferno/tick/base_move/reset

