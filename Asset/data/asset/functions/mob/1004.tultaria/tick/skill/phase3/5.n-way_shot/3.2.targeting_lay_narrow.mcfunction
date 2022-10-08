#> asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/3.2.targeting_lay_narrow
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/3.1.targeting

#> ショットの拡散用タグ
# @private
#declare tag FacingMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["FacingMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 4
    data modify storage lib: Argument.Spread set value 1

# 拡散
    execute as @e[type=marker,tag=FacingMarker,limit=1] run function lib:forward_spreader/circle

# ビーム
    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/3.3.laser

# 召喚
    data modify storage api: Argument.ID set value 1013
    function api:mob/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]