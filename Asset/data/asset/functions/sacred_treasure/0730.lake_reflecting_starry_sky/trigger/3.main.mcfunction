#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 湖を召喚
    summon marker ~ ~0.2 ~ {Tags:["Object","Uninterferable","KA.Lake","KA.RejoinTarget"]}

# 湖のループ
    schedule function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/loop 1t replace