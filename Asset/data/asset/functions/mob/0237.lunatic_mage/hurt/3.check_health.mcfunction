#> asset:mob/0237.lunatic_mage/hurt/3.check_health
#
# 体力の割合を検知する
#
# @within function asset:mob/0237.lunatic_mage/hurt/2.hurt

#> Priuvate
# @private
    #declare score_holder $HealthPer

# 現在体力を割合で出す
    function api:mob/get_health_percent
# 代入する
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 40%以下でTagを付与
    execute if score $HealthPer Temporary matches ..40 run tag @s add 6L.HealthLess40Per

# リセット
    scoreboard players reset $HealthPer Temporary