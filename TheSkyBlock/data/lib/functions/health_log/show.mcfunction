#> lib:health_log/show
#
#
#
# @within function
#   lib:damage/core/health_subtract/non-player
#   lib:heal/core/non-player
#   lib:score_to_health_wrapper/fluctuation

#> For Init
# @private
    #declare score_holder $Fluctuation
    #declare tag LogAECInit

tellraw @a [{"text":"$Fluctuation: "},{"score":{"objective":"Lib","name":"$Fluctuation"}}]
# 少数部を取り出す
    scoreboard players operation $Frac Temporary = $Fluctuation Lib
    scoreboard players operation $Frac Temporary /= $10 Const
    scoreboard players operation $Frac Temporary %= $10 Const
# 値は100倍されたもの
    scoreboard players operation $Int Temporary /= $100 Const
tellraw @a [{"text":"$Int: "},{"score":{"objective":"Temporary","name":"$Int"}}]
tellraw @a [{"text":"$Frac: "},{"score":{"objective":"Temporary","name":"$Frac"}}]

# 描画用AEC
    execute anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~0.4 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["LogAEC", "LogAECInit","Object"],CustomName:'""',CustomNameVisible:1b}
# 表示文字列生成
    execute if score $Int Temporary matches 0.. if score $Frac Temporary matches 0.. run loot replace block 10000 0 10000 container.0 loot lib:health_log/heal
    scoreboard players operation $Int Temporary *= $-1 Const
    scoreboard players operation $Frac Temporary *= $-1 Const
    execute if score $Int Temporary matches 0.. run loot replace block 10000 0 10000 container.0 loot lib:health_log/damage
# 文字列描画
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ run data modify entity @e[type=area_effect_cloud,tag=LogAECInit,distance=..0.001,limit=1] CustomName set from block 10000 0 10000 Items[0].tag.display.Name
# タグ削除
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ run tag @e[type=area_effect_cloud,tag=LogAECInit,distance=..0.001,limit=1] remove LogAECInit