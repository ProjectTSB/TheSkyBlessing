#> asset:mob/0237.lunatic_mage/skill/thunder/06.summon_thunder
#
# ここで雷を召喚します こうすることでfunctionするだけで落とせるように
#
# @within function asset:mob/0237.lunatic_mage/skill/thunder/**

# 雷を召喚
    data modify storage api: Argument.ID set value 191
    function api:mob/summon