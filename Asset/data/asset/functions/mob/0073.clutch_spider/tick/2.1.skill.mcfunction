#> asset:mob/0073.clutch_spider/tick/2.1.skill
#
# 発動時
#
# @within function asset:mob/0073.clutch_spider/tick/2.tick


# 演出
    playsound minecraft:entity.arrow.shoot hostile @a ~ ~ ~ 1 1

# 発動する
    function asset:mob/0073.clutch_spider/tick/2.3.shot

# タグを消す
    tag @s remove Landing

# スコアを戻す
    scoreboard players reset @s 21.Time