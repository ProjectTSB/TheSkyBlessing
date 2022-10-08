#> asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/3.2.targeting_lay
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/1.tick
#   asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/3.1.targeting

#> ショットの拡散用タグ
# @private
#declare tag FacingMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["FacingMarker"]}

# 実行座標を中心として拡散
    data modify storage lib: Argument.Bounds set value [[10d,10d],[2d,0d],[10d,10d]]
    execute as @e[type=marker,tag=FacingMarker] at @r run function lib:spread_entity/

# 拡散
    #execute as @e[type=marker,tag=FacingMarker,limit=1] run function lib:forward_spreader/circle

# ビーム
    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/3.3.laser

# 召喚
    data modify storage api: Argument.ID set value 1013
    function api:mob/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]