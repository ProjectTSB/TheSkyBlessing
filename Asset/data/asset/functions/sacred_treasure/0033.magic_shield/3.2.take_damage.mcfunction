#> asset:sacred_treasure/0033.magic_shield/3.2.take_damage
#
# ダメージを受けたかどうか
#
# @within function asset:sacred_treasure/0033.magic_shield/3.1.loop

# ダメージを受けたことを検知する
    function api:data_get/hurt_time
    execute store result score $HurtTime Temporary run data get storage api: HurtTime
# ダメージを受けたらタグを消す。ついでに演出
    execute if score $HurtTime Temporary matches 1.. at @s run function asset:sacred_treasure/0033.magic_shield/3.3.take_damage_tag_remove
# リセット
    scoreboard players reset $HurtTime