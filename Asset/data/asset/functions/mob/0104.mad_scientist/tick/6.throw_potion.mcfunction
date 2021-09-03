#> asset:mob/0104.mad_scientist/tick/6.throw_potion
#
#
#
# @within function asset:mob/0104.mad_scientist/tick/4.till_throw_potion

# ポーション投げ
    data modify storage api: Argument.ID set value 105
    function api:mob/summon

# スコアリセット
    scoreboard players reset @s 2W.Tick

# ポーションも消しちゃえ
    item replace entity @s weapon.mainhand with air
