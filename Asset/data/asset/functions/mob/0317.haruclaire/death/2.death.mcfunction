#> asset:mob/0317.haruclaire/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0317.haruclaire/death/1.trigger
    
# タグ更新
    tag @e[type=item_display,tag=8T.ModelRoot,sort=nearest,limit=1] add 8T.ModelRoot.Death
    tag @e[type=item_display,tag=8T.ModelRoot,sort=nearest,limit=1] remove 8T.ModelRoot

# 中心点削除
    kill @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1]
    
# スケジュールループを開始する
    schedule function asset:mob/0317.haruclaire/death/app.1.animation_schedule_loop 1t replace
