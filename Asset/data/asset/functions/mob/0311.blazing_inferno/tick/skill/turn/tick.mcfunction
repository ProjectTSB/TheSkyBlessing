#> asset:mob/0311.blazing_inferno/tick/skill/turn/tick
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# 攻撃
    # 予備動作
        execute if score @s 8N.Tick matches 7 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/right1_active/play
    # 召喚1
        execute if score @s 8N.Tick matches 10 rotated ~ 0 positioned ^ ^ ^5 run function asset:mob/0311.blazing_inferno/tick/skill/turn/summon_minion
    # 予備動作
        execute if score @s 8N.Tick matches 17 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/left1_active/play
    # 召喚2
        execute if score @s 8N.Tick matches 20 rotated ~ 0 positioned ^ ^ ^5 run function asset:mob/0311.blazing_inferno/tick/skill/turn/summon_minion
    # マッスルポーズ
        execute if score @s 8N.Tick matches 40 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/intro/play

# 方向転換
    execute if score @s 8N.Tick matches 51 run function asset:mob/0311.blazing_inferno/tick/skill/turn/turn_switch

# リセット
    execute if score @s 8N.Tick matches 100 run function asset:mob/0311.blazing_inferno/tick/base_move/reset