#> asset:mob/0327.eclael/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0327.eclael/death/1.trigger

# TODO:以下仮の実装
    # 中心点削除
        kill @e[type=marker,tag=93.Marker.SpawnPoint,sort=nearest,limit=1]
    # モデル削除
        function animated_java:eclael/remove/all
    # 天候を戻す
        weather clear