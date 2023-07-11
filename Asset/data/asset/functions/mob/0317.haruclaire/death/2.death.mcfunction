#> asset:mob/0317.haruclaire/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0317.haruclaire/death/1.trigger

# TODO：以下の処理はいずれ消去し，死亡演出を再生する
    # animated javaモデル消去
        execute as @e[tag=8T.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire/remove/all
    # 中心点削除
        kill @e[type=marker,tag=8T.Marker.SpawnPoint]