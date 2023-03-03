#> asset:artifact/0369.fire_magic/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0369.fire_magic/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5

# 弾を召喚
    summon area_effect_cloud ~ ~ ~ {Particle:"block air",Duration:20,Tags:["A9.First","A9.Fire","Projectile"]}
    execute anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=A9.First] ~ ~ ~ facing ^ ^ ^10
# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=A9.First] A9.UserID = @s UserID
# タグを消す
    tag @e[tag=A9.First] remove A9.First

# Scheduleループ
    schedule function asset:artifact/0369.fire_magic/trigger/3.1.tick 1t replace