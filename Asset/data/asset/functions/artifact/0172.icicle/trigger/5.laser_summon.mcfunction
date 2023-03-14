#> asset:artifact/0172.icicle/trigger/5.laser_summon
#
#
#
# @within function asset:artifact/0172.icicle/trigger/4.block_check

#> tag
# @private
    #declare tag 4S.First

# 弾を召喚
    summon area_effect_cloud ~ ~ ~ {Particle:"block air",Duration:220,Tags:["4S.First","4S.Laser","Uninterferable"]}
# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=4S.First,distance=..30] 4S.UserID = @s UserID
# タグを消す
    tag @e[tag=4S.First] remove 4S.First

#演出
    function asset:artifact/0172.icicle/trigger/particle