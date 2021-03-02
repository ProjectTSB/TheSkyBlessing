#> asset:sacred_treasure/0471.stone_cutter_chainsaw/3.1.check_critical
#
# クリティカルヒット判定のモブを取得
#
# @within function
#   asset:sacred_treasure/0471.stone_cutter_chainsaw/3.main
#   asset:sacred_treasure/0471.stone_cutter_chainsaw/3.1.check_critical
#   asset:sacred_treasure/0471.stone_cutter_chainsaw/3.2.entity

# タグつける
    tag @e[type=#lib:living,type=!player,tag=!Npc,tag=!Object,tag=!Friend,tag=!Projectile,distance=..0.5,limit=1] add 471.Critical

# 加算
    scoreboard players add $471.Count Temporary 1

# 3.5マスまで再帰
    execute unless entity @e[type=#lib:living,type=!player,tag=471.Critical,tag=!Npc,tag=!Object,tag=!Friend,tag=!Projectile,distance=..0.1] if score $471.Count Temporary matches ..35 positioned ^ ^ ^0.1 run function asset:sacred_treasure/0471.stone_cutter_chainsaw/3.1.check_critical