#> asset:sacred_treasure/1027.kyrie/trigger/magicset
#
#
#
# @within function asset:sacred_treasure/1027.kyrie/trigger/3.main
#> private
# @private
    #declare score_holder $Random

# 魔法陣展開
    summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["SH.Magic","SH.MagicSet","Uninterferable"]}
# 魔法陣移動
    execute as @e[type=area_effect_cloud,tag=SH.MagicSet,sort=nearest,limit=1] run tp @s @p
    execute positioned ^ ^ ^30 run tag @e[type=#lib:living,tag=Enemy,distance=..30,sort=nearest,limit=1] add SH.This
    execute if entity @e[type=#lib:living,tag=SH.This,distance=..80] as @e[type=area_effect_cloud,tag=SH.MagicSet,sort=nearest,limit=1] run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=SH.This,distance=..80,sort=nearest,limit=1]
    execute unless entity @e[type=#lib:living,tag=SH.This,distance=..80] run tp @e[type=area_effect_cloud,tag=SH.MagicSet,sort=nearest,limit=1] ~ ~ ~
    tag @e[type=#lib:living,tag=SH.This,distance=..80] remove SH.This

# スコア設定

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $10 Const
    scoreboard players set @e[type=area_effect_cloud,tag=SH.MagicSet,sort=nearest,limit=1] SH.CoolTime 40
    scoreboard players operation @e[type=area_effect_cloud,tag=SH.MagicSet,sort=nearest,limit=1] SH.CoolTime += $Random Temporary
# UserID
    scoreboard players operation @e[type=area_effect_cloud,tag=SH.MagicSet,sort=nearest,limit=1] SH.UserID = @s UserID
# リセット
    tag @e[type=area_effect_cloud,tag=SH.MagicSet,sort=nearest,limit=1] remove SH.MagicSet
    scoreboard players reset $Random