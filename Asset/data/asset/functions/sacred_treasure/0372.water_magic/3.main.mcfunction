#> asset:sacred_treasure/0372.water_magic/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0372.water_magic/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# ダメージ用AECを召喚
    execute rotated ~ 90 run summon area_effect_cloud ^ ^ ^7 {Radius:0f,Duration:20,Tags:["Uninterferable","60.Water","60.First"]}

# スコアセット
    scoreboard players set @e[type=area_effect_cloud,tag=60.First] 60.Time 0

# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=60.First] 60.UserID = @s UserID

# タグを消す
    tag @e[type=area_effect_cloud,tag=60.First] remove 60.First

# Scheduleセット
    schedule function asset:sacred_treasure/0372.water_magic/3.1.loop 1t replace