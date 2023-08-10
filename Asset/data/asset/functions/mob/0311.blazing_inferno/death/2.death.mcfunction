#> asset:mob/0311.blazing_inferno/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0311.blazing_inferno/death/1.trigger

# サウンド
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1 1.5

# 付近のしもべをキル
    kill @e[type=blaze,scores={MobID=315},distance=..30]

# 自分のマーカーを削除
    kill @e[type=marker,tag=8N.Marker.SpawnPoint,sort=nearest,limit=1]

# 自身のモデルに死亡イベント用タグ付与
    tag @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] add 8N.DeathEvent

# 自身のモデルに死亡アニメ再生
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/death_loop/play

# スケジュールループを開始する
    schedule function asset:mob/0311.blazing_inferno/tick/death_event/schedule_loop 1t