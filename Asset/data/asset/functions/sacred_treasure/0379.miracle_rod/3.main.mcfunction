#> asset:sacred_treasure/0379.miracle_rod/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0379.miracle_rod/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.puffer_fish.death ambient @a ~ ~ ~ 1 0

# 魔法陣展開
    summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["67.Magic","67.MagicSet","Uninterferable"]}
    execute as @e[type=area_effect_cloud,tag=67.Magic,sort=nearest,limit=1] run tp @s @p
    scoreboard players set @e[type=area_effect_cloud,tag=67.MagicSet,sort=nearest,limit=1] 67.CoolTime 20
    scoreboard players operation @e[type=area_effect_cloud,tag=67.MagicSet,sort=nearest,limit=1] 67.UserID = @s UserID
    tag @e[type=area_effect_cloud,tag=67.MagicSet,sort=nearest,limit=1] remove 67.MagicSet

# 魔法陣実行
    function asset:sacred_treasure/0379.miracle_rod/3.2.magic_circle