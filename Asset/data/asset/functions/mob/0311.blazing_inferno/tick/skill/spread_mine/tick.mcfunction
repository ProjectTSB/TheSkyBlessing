#> asset:mob/0311.blazing_inferno/tick/skill/spread_mine/tick
#
# すでに置いた地雷の起爆&地雷の設置
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

#> 地雷の起爆チェック用タグ
# @private
#declare tag 8S.Ready

# 攻撃
    # 予備動作、自分のモデルとして実行
        execute if score @s 8N.Tick matches 17 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/left1_active/play
    # 地雷の起爆、ID316番として実行
        execute if score @s 8N.Tick matches 20 as @e[type=item_display,tag=!8S.Ready,scores={MobID=316},distance=..60] at @s run function asset:mob/0316.blazing_mine/tick/event/bomb/start
    # 攻撃カウント設定
        # 通常時
            scoreboard players set @s[tag=!8N.Health.50Per] 8N.AttackAmount 3
        # 本気時
            scoreboard players set @s[tag=8N.Health.50Per] 8N.AttackAmount 6
    # 地雷の設置、自身のスポーン地点から発動
        execute if score @s 8N.Tick matches 20 at @e[type=marker,tag=8N.SpawnPoint,distance=..60,sort=nearest,limit=1] positioned ~ ~3 ~ run function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/place_mine
    # 演出
        execute if score @s 8N.Tick matches 20 anchored eyes positioned ^0.4 ^-0.3 ^0.5 run function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/vfx

# リセット
    execute if score @s 8N.Tick matches 40 run function asset:mob/0311.blazing_inferno/tick/base_move/reset