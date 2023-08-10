#> asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/tick
#
# 三連火の玉
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# ハードモードなら謎の加速をかます
    execute if predicate api:global_vars/difficulty/min/hard if score @s 8N.Tick matches 20 run tag @s add 8N.Turn.HighSpeed

# 攻撃
    # 予備動作のほうはちょっと早めに実行
        execute if score @s 8N.Tick matches 17 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/right1_active/play
    # 攻撃を実行
        execute if score @s 8N.Tick matches 20 run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/throw

    # 予備動作のほうはちょっと早めに実行
        execute if score @s 8N.Tick matches 37 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/right1_active/play
    # 攻撃を実行
        execute if score @s 8N.Tick matches 40 run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/throw

    # 予備動作のほうはちょっと早めに実行
        execute if score @s 8N.Tick matches 57 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/right1_active/play
    # 攻撃を実行
        execute if score @s 8N.Tick matches 60 run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/throw

# リセット
    execute if score @s 8N.Tick matches 110 run function asset:mob/0311.blazing_inferno/tick/base_move/reset