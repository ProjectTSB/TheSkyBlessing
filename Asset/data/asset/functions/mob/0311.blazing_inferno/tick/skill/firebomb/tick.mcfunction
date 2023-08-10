#> asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# 動作停止
    #execute if score @s 8N.Tick matches 0 run tag @s remove 8N.RailMove

# 攻撃
    # 予備動作のほうはちょっと早めに実行
        execute if score @s 8N.Tick matches 10 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/burst/play
    # 攻撃を実行
        execute if score @s 8N.Tick matches 17 anchored eyes positioned ^ ^ ^2 run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/throw
    # ハードモードかつHP50%の場合、２本追加で放つ
        execute if predicate api:global_vars/difficulty/min/hard if score @s[tag=8N.Health.50Per] 8N.Tick matches 17 anchored eyes positioned ^1 ^ ^2 rotated ~-45 ~ run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/throw_spread
        execute if predicate api:global_vars/difficulty/min/hard if score @s[tag=8N.Health.50Per] 8N.Tick matches 17 anchored eyes positioned ^-1 ^ ^2 rotated ~45 ~ run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/throw_spread

# リセット
    execute if score @s 8N.Tick matches 100 run function asset:mob/0311.blazing_inferno/tick/base_move/reset