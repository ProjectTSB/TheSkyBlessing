#> lib:status_log/show_health
#
#
#
# @within function
#   api:damage/core/health_subtract/non-player/
#   api:heal/core/non-player
#   lib:score_to_health_wrapper/fluctuation
#   asset_manager:artifact/triggers/attack/vanilla/
#   mob_manager:fix_health

#> For Init
# @private
    #declare score_holder $Fluctuation
    #declare tag LogDisplayInit
    #declare score_holder $isNegative
    #declare tag SummonPosMarker

# アイコン選択
    execute if data storage global Config{EnableDamageTypeIcon:true} if data storage api: Argument{AttackType:"Physical"} run data modify storage lib: AttackType set from storage global Icon.Attack.Physical
    execute if data storage global Config{EnableDamageTypeIcon:true} if data storage api: Argument{AttackType:"Magic"} run data modify storage lib: AttackType set from storage global Icon.Attack.Magic

    execute if data storage global Config{EnableDamageTypeIcon:true} if data storage api: Argument{ElementType:"Fire"} run data modify storage lib: ElementType set from storage global Icon.Attack.Fire
    execute if data storage global Config{EnableDamageTypeIcon:true} if data storage api: Argument{ElementType:"Water"} run data modify storage lib: ElementType set from storage global Icon.Attack.Water
    execute if data storage global Config{EnableDamageTypeIcon:true} if data storage api: Argument{ElementType:"Thunder"} run data modify storage lib: ElementType set from storage global Icon.Attack.Thunder
    execute if data storage global Config{EnableDamageTypeIcon:true} if data storage api: Argument{ElementType:"None"} run data modify storage lib: ElementType set from storage global Icon.Attack.None

# 負数の場合の処理 // 0未満では無く、0以下なのは0の表記を赤くするため。
    execute store success score $isNegative Temporary if score $Fluctuation Lib matches ..0
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Fluctuation Lib *= $-1 Const
# 少数部を取り出す
    scoreboard players operation $Frac Temporary = $Fluctuation Lib
    scoreboard players operation $Frac Temporary /= $10 Const
    scoreboard players operation $Frac Temporary %= $10 Const
# 値は100倍されたもの
    scoreboard players operation $Int Temporary = $Fluctuation Lib
    scoreboard players operation $Int Temporary /= $100 Const

# 設置位置用AEC
    summon marker ~ ~ ~ {Tags:["SummonPosMarker"]}
# 表示位置変更
    data modify storage lib: Argument.Bounds set value [[1d,1d],[0.2d,0.8d],[1d,1d]]
    execute as @e[type=marker,tag=SummonPosMarker,distance=..0.001,limit=1] run function lib:spread_entity/
# 描画用AEC
    execute at @e[type=marker,tag=SummonPosMarker,distance=..1.5,limit=1] run summon text_display ~ ~ ~ {Tags:["LogDisplay", "LogDisplayInit","Object"],brightness:{sky:15,block:15},billboard:"center",background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0.4f,0f]}}
# 表示文字列生成
    execute if score $isNegative Temporary matches 0 run loot replace block 10000 0 10000 container.0 loot lib:status_log/heal
    execute if score $isNegative Temporary matches 1 if data storage global Config{EnableDamageTypeIcon:true} run loot replace block 10000 0 10000 container.0 loot lib:status_log/damage_with_icon
    execute if score $isNegative Temporary matches 1 unless data storage global Config{EnableDamageTypeIcon:true} run loot replace block 10000 0 10000 container.0 loot lib:status_log/damage
# 文字列描画
    data modify entity @e[type=text_display,tag=LogDisplayInit,distance=..1.5,limit=1] text set from block 10000 0 10000 Items[0].tag.display.Name

# タグ削除
    tag @e[type=text_display,tag=LogDisplayInit,distance=..1.5,limit=1] remove LogDisplayInit
# リセット
    kill @e[type=marker,tag=SummonPosMarker,distance=..1.5,limit=1]
    data remove storage lib: AttackType
    data remove storage lib: ElementType
    scoreboard players reset $Fluctuation Lib
    scoreboard players reset $Frac Temporary
    scoreboard players reset $Int Temporary
    scoreboard players reset $isNegative Temporary
