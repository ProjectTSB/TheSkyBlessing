#> asset:artifact/0615.censored/trigger/3.2.censored_object2
#
# ピー音を鳴らすエンティティを召喚
#
# @within function asset:artifact/0615.censored/trigger/**

# 音を鳴らすだけの存在を召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","H3.CensoredSound"]}

# 再帰先へ
    schedule function asset:artifact/0615.censored/trigger/3.3.censored_sound 1t