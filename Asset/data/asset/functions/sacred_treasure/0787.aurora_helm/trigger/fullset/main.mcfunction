#> asset:sacred_treasure/0787.aurora_helm/trigger/fullset/main
#
# 演出
#
# @within function asset:sacred_treasure/0787.aurora_helm/trigger/fullset/loop

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.2 0.000 0.545 1.000 ~ ~1.2 ~ 0.8 0.6 0.8 0 2 normal @a

# 隠し効果くらいの気持ちのeffect
    execute unless predicate lib:is_day run effect give @a[distance=..10] speed 1 0 true

# スケジュールループ
    schedule function asset:sacred_treasure/0787.aurora_helm/trigger/fullset/loop 1t replace