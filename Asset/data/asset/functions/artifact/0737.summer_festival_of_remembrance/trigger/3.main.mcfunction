#> asset:artifact/0737.summer_festival_of_remembrance/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0737.summer_festival_of_remembrance/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 花火の処理を実行するエンティティを召喚
    summon marker ~ ~ ~ {Tags:["KH.FireworkCore","Object"]}

# ループ開始
    schedule function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/loop 1t replace