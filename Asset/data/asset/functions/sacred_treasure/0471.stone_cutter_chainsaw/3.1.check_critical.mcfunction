#> asset:sacred_treasure/0471.stone_cutter_chainsaw/3.1.check_critical
#
# クリティカルヒット判定のモブを取得
#
# @within function
#   asset:sacred_treasure/0471.stone_cutter_chainsaw/3.main
#   asset:sacred_treasure/0471.stone_cutter_chainsaw/3.1.check_critical
#   asset:sacred_treasure/0471.stone_cutter_chainsaw/3.2.entity

# タグつける
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add 7n.Critical

# 加算
    scoreboard players add $7n.Count Temporary 1

# 3.5マスまで再帰
    execute unless entity @e[type=#lib:living,type=!player,tag=7n.Critical,tag=!Uninterferable,dx=0] if score $7n.Count Temporary matches ..35 positioned ^ ^ ^0.1 run function asset:sacred_treasure/0471.stone_cutter_chainsaw/3.1.check_critical