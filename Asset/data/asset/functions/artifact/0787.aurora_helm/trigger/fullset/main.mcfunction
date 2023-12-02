#> asset:artifact/0787.aurora_helm/trigger/fullset/main
#
# 演出
#
# @within function asset:artifact/0787.aurora_helm/trigger/fullset/loop

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.2 0.000 0.545 1.000 ~ ~1.2 ~ 1.2 0.6 1.2 0 2 normal @a

# 隠し効果くらいの気持ちのeffect
    execute unless predicate lib:is_day if predicate lib:weather/is_sunny run effect give @s speed 1 0 true
    execute unless predicate lib:is_day if predicate lib:weather/is_sunny run effect give @s night_vision 11 0 true

# スケジュールループ
    schedule function asset:artifact/0787.aurora_helm/trigger/fullset/loop 1t replace