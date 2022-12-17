#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/summon_sword
#
# 剣を設置
#
# @within function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/active

# マーカーに対して召喚
    data modify storage api: Argument.ID set value 1016
    execute positioned ~ ~5 ~ run function api:mob/summon

# パーティクルも出しておこう
    function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/particle