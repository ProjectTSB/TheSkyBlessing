#> api:entity/mob/effect/get/from_id
#
# ID指定で自分の持つエフェクトを拾い上げる
#
# 転送先がある場合は、その付与先の保存データを参照する。
# 実行中の同じ付与先の context の変更も取得値へ反映する。
#
# @input
#   as player
#   storage api:
#       Argument.ID : int
# @output storage api: Return.Effect
# @api

# 引数を確認する
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]

# context を書き戻した保存データから指定 ID を取得する
    execute if data storage api: Argument.ID run function api:entity/mob/effect/core/get/from_id.m with storage api: Argument

# 取得結果は Return に残し、この API の入力だけを片付ける
    data remove storage api: Argument.ID
