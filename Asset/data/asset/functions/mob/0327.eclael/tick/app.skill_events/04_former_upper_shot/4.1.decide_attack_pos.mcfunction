#> asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos
#
# アニメーションのイベントハンドラ 前半・射撃 発射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/1.main

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 12.0
    data modify storage lib: Argument.Spread set value 4.5

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^4 run particle flash

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]