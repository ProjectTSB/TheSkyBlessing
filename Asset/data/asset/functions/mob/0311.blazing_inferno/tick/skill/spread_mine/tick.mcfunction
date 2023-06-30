#> asset:mob/0311.blazing_inferno/tick/skill/spread_mine/tick
#
# すでに置いた地雷の起爆&地雷の設置
#
# @within function asset:mob/0311.blazing_inferno/tick/skill_active

#> 地雷の起爆チェック用タグ
# @private
#declare tag 8S.Ready

# 攻撃
    # 予備動作、自分のモデルとして実行
        execute if score @s 8N.Tick matches 17 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/left1_active/play
    # 地雷の起爆、ID316番として実行
        execute if score @s 8N.Tick matches 20 as @e[type=item_display,tag=!8S.Ready,scores={MobID=316},distance=..60] at @s run function asset:mob/0316.blazing_mine/tick/event/bomb/start
    # 地雷の設置、自身のスポーン地点から発動
        execute if score @s 8N.Tick matches 20 at @e[type=marker,tag=8N.SpawnPoint,distance=..60,sort=nearest,limit=1] positioned ~ ~3 ~ run function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/place_stacked

# リセット
    execute if score @s 8N.Tick matches 60 run function asset:mob/0311.blazing_inferno/tick/reset