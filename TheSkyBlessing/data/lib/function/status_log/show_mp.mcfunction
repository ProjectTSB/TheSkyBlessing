#> lib:status_log/show_mp
#
#
#
# @within function api:mp/fluctuation

#> For Init
# @private
    #declare tag LogAECInit
    #declare tag SummonPosStand

# 設置位置用AEC
    execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Marker:1b,Silent:1b,Small:1b,Invisible:1b,Tags:["SummonPosStand"]}
# 表示位置変更
    data modify storage lib: Argument.Bounds set value [[1d,1d],[0.2d,0.8d],[1d,1d]]
    execute anchored eyes positioned ^ ^ ^ as @e[type=armor_stand,tag=SummonPosStand,distance=..0.001,limit=1] run function lib:spread_entity/
# 描画用AEC
    execute anchored eyes positioned ^ ^ ^ at @e[type=armor_stand,tag=SummonPosStand,distance=..1.5,limit=1] run summon armor_stand ~ ~ ~ {Marker:1b,Silent:1b,Small:1b,Invisible:1b,Tags:["LogAEC", "LogAECInit","Object"],CustomName:"",CustomNameVisible:1b}
# 表示文字列生成
    loot replace block 10000 0 10000 container.0 loot lib:status_log/mp
# 文字列描画
    execute anchored eyes positioned ^ ^ ^ run data modify entity @e[type=armor_stand,tag=LogAECInit,distance=..1.5,limit=1] CustomName set from block 10000 0 10000 Items[0].tag.display.Name
# タグ削除
    execute anchored eyes positioned ^ ^ ^ run tag @e[type=armor_stand,tag=LogAECInit,distance=..1.5,limit=1] remove LogAECInit
# リセット
    execute anchored eyes positioned ^ ^ ^ run kill @e[type=armor_stand,tag=SummonPosStand,distance=..1.5,limit=1]
