#> asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# 攻撃
    # 予備動作のほうはちょっと早めに実行
        execute if score @s 8N.Tick matches 17 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/left1_active/play
    # 攻撃を実行
        execute if score @s 8N.Tick matches 20 run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/throw

# 本気出すともう一個投げてくる
    # 予備動作のほうはちょっと早めに実行
        execute if score @s[tag=8N.Health.50Per] 8N.Tick matches 37 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/left1_active/play
    # 攻撃を実行
        execute if score @s[tag=8N.Health.50Per] 8N.Tick matches 40 run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/throw

# リセット
    execute if score @s 8N.Tick matches 80 run function asset:mob/0311.blazing_inferno/tick/base_move/reset