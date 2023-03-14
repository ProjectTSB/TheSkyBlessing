#> asset:artifact/0920.dal_i_thalion/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 1tick以内にイなくなった場合動かない可能性があるためリジョイン
    execute if entity @a[tag=PK.EffectClear] run schedule function asset:artifact/0920.dal_i_thalion/trigger/4.schedule 1t