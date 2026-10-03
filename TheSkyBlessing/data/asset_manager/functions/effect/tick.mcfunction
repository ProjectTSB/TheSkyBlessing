#> asset_manager:effect/tick
#
# @s に付与された Effect を、開始時の予定順に処理する。
# 付与先（Effect を持つエンティティ）の OhMyDat に Effects を残し、イベント中の API も参照できるようにする。
# 処理は snapshot → foreach/process → 表示の順。途中の新規付与・再付与は次回に回す。
#
# 走査用の一時データは storage asset:effect に置く。
# TickQueue は {ID, Revision} を保存した今回の処理予定、Iterator.Index はその走査位置。
# Current と TargetEffect は foreach が Effect ごとに作成・破棄する。
#
# core:tick/ が付与先を as / at に設定して呼ぶ。走査用 storage・score は共有する。
# イベント内からこの関数を再帰的に呼び出すことは想定しない。
#
# @input as entity
# @within function core:tick/

# 付与先の Effects から今回の処理予定を作る
# snapshot 中はイベントを呼ばないため、保存配列の添字で順に読み取れる。
# Effects 自体は取り出さず、API から検索できる状態に保つ。
    function oh_my_dat:please
    data modify storage asset:effect TickQueue set value []
    data modify storage asset:effect Iterator set value {Index:0}
    scoreboard players set $EffectTickIndex Temporary 0
    execute store result score $EffectTickCount Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    execute if score $EffectTickCount Temporary matches 1.. run function asset_manager:effect/snapshot.m with storage asset:effect Iterator

# 今回の死亡処理を確定する
# トーテム使用も死亡時の Effect 処理に含める。付与中の全 Effect を処理した後に解除する。
    execute if entity @s[tag=Death] run tag @s add DeathProcess
    execute if score @s UsedTotem matches 1.. run tag @s add DeathProcess

# 処理予定の先頭から実行する
# Effect.CurrentOwner は API の実行対象が現在の付与先かを判断するためのタグ。
# 同じ付与先への API 操作だけが、イベント実行中の作業データ（asset:context）を書き戻し・読み直す。
# this はイベント内で他の entity へ移った後に付与先を参照するためのタグ。
    tag @s add Effect.CurrentOwner
    tag @s add this
    scoreboard players set $EffectTickIndex Temporary 0
    data modify storage asset:effect Iterator.Index set value 0
    execute if score $EffectTickCount Temporary matches 1.. run function asset_manager:effect/foreach with storage asset:effect Iterator
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
    scoreboard players reset $EffectTickIndex Temporary
    scoreboard players reset $EffectTickCount Temporary
    data remove storage asset:effect TickQueue
    data remove storage asset:effect Iterator
