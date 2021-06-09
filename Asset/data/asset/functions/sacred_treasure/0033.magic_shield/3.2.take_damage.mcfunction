#> asset:sacred_treasure/0033.magic_shield/3.2.take_damage
#
# ダメージを受けたかどうか
#
# @within function asset:sacred_treasure/0033.magic_shield/3.1.loop

# ダメージを受けたことを検知する
    function api:data_get/hurt_time
    execute store result score $HurtTime Temporary run data get storage api: HurtTime
    execute if score $HurtTime Temporary matches 1.. run tag @s remove X.MagicShield
    scoreboard players reset $HurtTime