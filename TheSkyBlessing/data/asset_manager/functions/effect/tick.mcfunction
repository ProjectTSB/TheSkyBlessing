#> asset_manager:effect/tick
#
# @s に付与された Effect を、開始時の予定順に処理する。
# Effect を持つ付与先の OhMyDat に Effects を残し、イベント中の API からも参照できるようにする。
# snapshot → foreach/process → 表示の順に処理する。途中の新規付与・再付与のイベントは次回に呼ぶ。
#
# 走査用の一時データは storage asset:effect に置く。
# SnapshotSource は反転用のコピーで、イベント前に破棄する。TickQueue は {ID, Revision} を逆順に保持する。
# Current と TargetEffect は foreach が Effect ごとに作成・破棄する。
#
# core:tick/ が付与先を as / at に設定して呼ぶ。走査用 storage は共有する。
# イベント内からこの関数を再帰的に呼び出すことは想定しない。
#
# @input as entity
# @within function core:tick/

# 付与先の Effects から今回の処理予定を作る
# コピーの末尾から ID/Revision を取り出し、元の付与順とは逆の予定を作る。
# Effects 自体は取り出さず、API から検索できる状態に保つ。
    function oh_my_dat:please
    data modify storage asset:effect TickQueue set value []
    data modify storage asset:effect SnapshotSource set value []
    data modify storage asset:effect SnapshotSource set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    execute if data storage asset:effect SnapshotSource[0] run function asset_manager:effect/snapshot
    data remove storage asset:effect SnapshotSource

# 今回の死亡処理を確定する
# トーテム使用も死亡時の Effect 処理に含める。全 Effect の処理後に DeathProcess タグを外す。
    execute if entity @s[tag=Death] run tag @s add DeathProcess
    execute if score @s UsedTotem matches 1.. run tag @s add DeathProcess

# 逆順の予定を末尾から取り出し、元の付与順で実行する
# Effect.CurrentOwner は API の実行対象が現在の付与先かを判断するためのタグ。
# 同じ付与先への API 操作だけが、イベントの作業データである asset:context を書き戻し・読み直す。
# this はイベント内で他の entity へ移った後に付与先を参照するためのタグ。
    tag @s add Effect.CurrentOwner
    tag @s add this
    execute if data storage asset:effect TickQueue[0] run function asset_manager:effect/foreach
    tag @s remove Effect.CurrentOwner
    tag @s remove this

# イベント後の保存データから HasAssetEffect タグと表示を更新する
# イベント内で別の付与先の API が呼ばれると OhMyDat の参照先が変わるため、取得し直す。
    function oh_my_dat:please
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[0] run tag @s remove HasAssetEffect
    execute if entity @s[type=player] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[0] run function asset_manager:effect/display/

# 付与先単位の入力と走査用の一時値を片付ける
# Effect ごとの context は foreach 側で破棄済み。次の付与先へ状態を持ち越さない。
    scoreboard players reset @s UsedMilk
    scoreboard players reset @s UsedTotem
    tag @s remove DeathProcess
    data remove storage asset:effect TickQueue
