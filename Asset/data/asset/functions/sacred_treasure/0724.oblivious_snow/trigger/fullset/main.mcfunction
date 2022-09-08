#> asset:sacred_treasure/0724.oblivious_snow/trigger/fullset/main
#
# メイン処理
#
# @within function asset:sacred_treasure/0724.oblivious_snow/trigger/fullset/loop

# 演出
    particle snowflake ~ ~4 ~ 1.5 0.25 1.5 0.0 9 normal @a

# 周囲に鈍足を付与
    effect give @e[type=#lib:living,tag=Enemy,distance=..3.5] slowness 1 1 true

# ループ処理
    schedule function asset:sacred_treasure/0724.oblivious_snow/trigger/fullset/loop 1t replace