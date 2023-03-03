#> asset:artifact/0372.water_magic/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0372.water_magic/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# ダメージ用AECを召喚
    execute rotated ~ 0 positioned ~ ~0.3 ~ run summon area_effect_cloud ^ ^ ^5 {Radius:0f,Duration:21,Tags:["Uninterferable","AC.Water","AC.First"]}

# スコアセット
    scoreboard players set @e[type=area_effect_cloud,tag=AC.First] AC.Time 0

# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=AC.First] AC.UserID = @s UserID

# タグを消す
    tag @e[type=area_effect_cloud,tag=AC.First] remove AC.First

# Scheduleセット
    schedule function asset:artifact/0372.water_magic/trigger/3.1.loop 1t replace