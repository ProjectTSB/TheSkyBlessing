#> asset:artifact/0279.c-4/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0279.c-4/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.candle.place block @a
# 前方に壁があるまで再帰して設置
    execute anchored eyes positioned ~ ~1.8 ~ run function asset:artifact/0279.c-4/trigger/4.place
# タグ削除
    tag @s remove 7R.Landing

# スケジュールで1tick遅らせてノーコリジョンチームにいれたい
    schedule function asset:artifact/0279.c-4/trigger/schedule_team_join 1t replace