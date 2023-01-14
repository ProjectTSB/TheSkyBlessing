#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/spread
#
# 拡散処理
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/place_marker
#   asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/spread

#> Val
# @private
#declare score_holder $Continuation

# 前回のデータがある場合に備えてリセット
    scoreboard players reset $Continuation Temporary
# (再)拡散
    data modify storage lib: Argument.Bounds set value [[20,20],[0,0],[20,20]]
    execute at @e[type=marker,tag=RW.XYZ,distance=..100,sort=nearest,limit=1] run function lib:spread_entity/
# 半径14m以内ではない 又は 他の歯車と重なっている場合再拡散する
    #execute at @s unless entity @e[type=zombie,tag=this,distance=..14,limit=1] run scoreboard players set $Continuation Temporary 1
    execute at @s if entity @e[type=marker,tag=RW.TargetMarker,distance=0.01..8] run scoreboard players set $Continuation Temporary 1
    execute if score $Continuation Temporary matches 1 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/spread