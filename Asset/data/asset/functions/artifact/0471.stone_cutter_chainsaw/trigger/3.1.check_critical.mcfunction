#> asset:artifact/0471.stone_cutter_chainsaw/trigger/3.1.check_critical
#
# クリティカルヒット判定のモブを取得
#
# @within function
#   asset:artifact/0471.stone_cutter_chainsaw/trigger/3.main
#   asset:artifact/0471.stone_cutter_chainsaw/trigger/3.1.check_critical
#   asset:artifact/0471.stone_cutter_chainsaw/trigger/3.2.entity

# タグつける
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add D3.Critical

# 加算
    scoreboard players add $7n.Count Temporary 1

# 3.5マスまで再帰
    execute unless entity @e[type=#lib:living,type=!player,tag=D3.Critical,tag=!Uninterferable,dx=0] if score $7n.Count Temporary matches ..35 positioned ^ ^ ^0.1 run function asset:artifact/0471.stone_cutter_chainsaw/trigger/3.1.check_critical