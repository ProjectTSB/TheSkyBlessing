#> asset:mob/0237.lunatic_mage/skill/thunder/3.second
#
# ハード以上で2回を打つように
#
# @within function asset:mob/0237.lunatic_mage/skill/thunder/1

# ワープする
    function asset:mob/0237.lunatic_mage/skill/teleport/main

# 自身のスコアを減らす
    scoreboard players set @s 6L.Tick 3

# 2回目のTagをつける
    tag @s add 6L.SkillSecond