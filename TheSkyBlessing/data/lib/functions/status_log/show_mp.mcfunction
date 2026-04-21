#> lib:status_log/show_mp
#
#
#
# @within function api:mp/fluctuation

#> For Init
# @private
    #declare tag LogDisplayInit
    #declare tag SummonPosMarker

# 設置位置用AEC
    execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["SummonPosMarker"]}
# 表示位置変更
    data modify storage lib: Argument.Bounds set value [[1d,1d],[0.2d,0.8d],[1d,1d]]
    execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=SummonPosMarker,distance=..0.001,limit=1] run function lib:spread_entity/
# 描画用AEC
    execute anchored eyes positioned ^ ^ ^ at @e[type=marker,tag=SummonPosMarker,distance=..1.5,limit=1] run summon text_display ~ ~ ~ {Tags:["LogDisplay", "LogDisplayInit","Object"],billboard:"center",background:16711680,text:'[{"text":""}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0.4f,0f]}}
# 表示文字列生成
    loot replace block 10000 0 10000 container.0 loot lib:status_log/mp
# 文字列描画
    execute anchored eyes positioned ^ ^ ^ run data modify entity @e[type=text_display,tag=LogDisplayInit,distance=..1.5,limit=1] text set from block 10000 0 10000 Items[0].tag.display.Name
# タグ削除
    execute anchored eyes positioned ^ ^ ^ run tag @e[type=text_display,tag=LogDisplayInit,distance=..1.5,limit=1] remove LogDisplayInit
# リセット
    execute anchored eyes positioned ^ ^ ^ run kill @e[type=marker,tag=SummonPosMarker,distance=..1.5,limit=1]
