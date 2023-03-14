#> asset:artifact/0379.miracle_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0379.miracle_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.puffer_fish.death player @a ~ ~ ~ 1 0

# 魔法陣展開
    summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["AJ.Magic","AJ.MagicSet","Uninterferable"]}
    execute as @e[type=area_effect_cloud,tag=AJ.MagicSet,sort=nearest,limit=1] run tp @s @p
    scoreboard players set @e[type=area_effect_cloud,tag=AJ.MagicSet,sort=nearest,limit=1] AJ.CoolTime 10
    scoreboard players operation @e[type=area_effect_cloud,tag=AJ.MagicSet,sort=nearest,limit=1] AJ.UserID = @s UserID
    tag @e[type=area_effect_cloud,tag=AJ.MagicSet,sort=nearest,limit=1] remove AJ.MagicSet

# 魔法陣実行
    function asset:artifact/0379.miracle_rod/trigger/3.2.magic_circle