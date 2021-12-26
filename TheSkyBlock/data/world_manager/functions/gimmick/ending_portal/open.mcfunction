#> world_manager:gimmick/ending_portal/open
#
# 初期スポーンに帰還するポータル
#
# @api

# 最初のやつをキル
    kill @e[type=marker,tag=BetaEndingPortal]

# 指定座標に召喚
    summon marker ~ ~ ~ {Tags:["BetaEndingPortal"]}
