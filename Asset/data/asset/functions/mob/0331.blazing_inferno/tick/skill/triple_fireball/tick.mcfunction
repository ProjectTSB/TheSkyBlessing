#> asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/tick
#
#
#
# @within function asset:mob/0331.blazing_inferno/tick/skill_active

# ブレイズっぽい攻撃
    execute if score @s 8N.Tick matches 17 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/right1_active/play
    execute if score @s 8N.Tick matches 20 run function asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/throw

    execute if score @s 8N.Tick matches 37 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/right1_active/play
    execute if score @s 8N.Tick matches 40 run function asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/throw

    execute if score @s 8N.Tick matches 57 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/right1_active/play
    execute if score @s 8N.Tick matches 60 run function asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/throw

# リセット
    execute if score @s 8N.Tick matches 60 run function asset:mob/0331.blazing_inferno/tick/reset