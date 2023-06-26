#> asset:mob/0331.blazing_inferno/tick/intro/
#
# 開幕時の動作。
#
# @within function asset:mob/0331.blazing_inferno/tick/2.tick

# ポージング
    execute if score @s 8N.Tick matches 20 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function asset:mob/0331.blazing_inferno/tick/intro/posing

# 音を鳴らしてタイトル表示
    execute if score @s 8N.Tick matches 31 run function asset:mob/0331.blazing_inferno/tick/intro/title

# 戦闘開始
    execute if score @s 8N.Tick matches 80 run function asset:mob/0331.blazing_inferno/tick/intro/battle_start
