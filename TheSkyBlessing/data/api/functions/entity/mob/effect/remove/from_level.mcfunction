#> api:entity/mob/effect/remove/from_level
#
# 付与先の Effect のうち、解除条件と件数に合うものへ削除予約を設定する。
# 実行中のイベントは中断せず、Duration=-1 として削除を予約する。
# 自分自身はイベント復帰後、未処理の Effect はその処理時、処理済みの Effect は次の Effect tick に remove を呼ぶ。
# 付与・再付与イベント待ちの場合は、そのイベントを実行してから remove を呼ぶ。
# ClearCount は一覧全体に適用し、0 以下なら削除しない。
#
# context への更新結果の反映は、同じ付与先の given / re-given / tick 中に限る。
# Argument は呼出後も保持するため、使用後は effect/reset を呼ぶ。
# 独立した Return 値・戻り値用スコアはない。
#
# @input
#   as entity
#   storage api:
#       Argument.ClearLv : int
#       Argument.ClearType? : "all" | "bad" | "good" (default: "all")
#       Argument.ClearCount? : int (default: 2147483647)
# @output
#   storage asset:context
#       Duration : int
#       Stack : int
#       this : compound
# @api

# 引数を確認する
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
    execute unless data storage api: Argument.ClearType run data modify storage api: Argument.ClearType set value "all"
    execute unless data storage api: Argument.ClearCount run data modify storage api: Argument.ClearCount set value 2147483647

# API が最新の Duration / Stack / Field を扱えるよう、現在の context を保存する
    function asset_manager:effect/context/before_api

# 保存データへ削除予約を設定する
    function api:entity/mob/effect/core/remove/from_level/

# イベントの続きが API 更新後の値を使えるよう、実行中の Effect の context を読み直す
    function asset_manager:effect/context/after_api
