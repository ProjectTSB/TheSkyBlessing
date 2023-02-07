#> asset:sacred_treasure/1024.brave_rod/trigger/combo/beam1
#
#
#
# @within function asset:sacred_treasure/1024.brave_rod/trigger/3.main

#> SpreadLib
# @private
#declare tag SpreadMarker

# 演出
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 1 1.5

# 拡散させて実行
    # 拡散させるEntityを召喚する
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # ステータス設定
        data modify storage lib: Argument.Distance set value 1
        data modify storage lib: Argument.Spread set value 1.5
    # 拡散
        execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    # その位置から実行
        execute at @e[type=marker,tag=SpreadMarker,limit=1] run function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam1_shot
    # リセット
        kill @e[type=marker,tag=SpreadMarker]