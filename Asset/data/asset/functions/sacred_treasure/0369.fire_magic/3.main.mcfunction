#> asset:sacred_treasure/0369.fire_magic/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0369.fire_magic/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.blaze.shoot master @a ~ ~ ~ 1 1
    playsound entity.blaze.shoot master @a ~ ~ ~ 1 0.5

# 弾を召喚
    summon area_effect_cloud ~ ~ ~ {Particle:"block air",Duration:20,Tags:["5X.First","5X.Fire"]}
    execute anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=5X.First] ~ ~ ~ facing ^ ^ ^10
# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=5X.First] 5X.UserID = @s UserID
# タグを消す
    tag @e[tag=5X.First] remove 5X.First


# Scheduleループ
    schedule function asset:sacred_treasure/0369.fire_magic/3.1.tick 1t replace
