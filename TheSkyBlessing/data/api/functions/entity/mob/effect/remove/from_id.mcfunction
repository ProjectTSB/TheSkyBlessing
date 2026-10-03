#> api:entity/mob/effect/remove/from_id
#
# 付与先の指定 ID の Effect に削除予約を設定する。
# 実行中のイベントは中断しない。
# 自分自身の remove はイベントから戻った後に呼ぶ。未処理の Effect はその処理時、処理済みの Effect は次の Effect tick に呼ぶ。
# 付与・再付与イベント待ちの場合は、そのイベントを実行してから remove を呼ぶ。
#
# context への更新結果の反映は、同じ付与先の given / re-given / tick 中に限る。
# Argument は呼出後も保持するため、使用後は effect/reset を呼ぶ。
#
# @input
#   as entity
#   storage api:
#       Argument.ID : int
# @output
#   storage asset:context
#       Duration : int
#       Stack : int
#       this : compound
# @api

# 引数を確認する
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]

# context を保存する
    function asset_manager:effect/context/before_api

# 保存データへ削除予約を設定する
    function api:entity/mob/effect/core/remove/from_id

# 更新後の context を読み直す
    function asset_manager:effect/context/after_api
