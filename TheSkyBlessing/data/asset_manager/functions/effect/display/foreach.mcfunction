#> asset_manager:effect/display/foreach
#
# 表示用のコピーから一件ずつアイコンを追加する。
# TargetEffect は既存の icon 関数へ渡す作業値で、保存データには書き戻さない。
#
# @s は表示対象のプレイヤー。呼出元が DisplayEffects を用意し、復帰後に作業値を片付ける。
#
# @input as entity
# @within function
#   asset_manager:effect/display/
#   asset_manager:effect/display/foreach

# 一件を取り出し、Visible=true の Effect だけアイコンに変換する
    data modify storage asset:effect TargetEffect set from storage asset:effect DisplayEffects[-1]
    execute if data storage asset:effect TargetEffect{Visible:1b} run function asset_manager:effect/display/icon/

# 表示済みの要素をコピーから削除して次へ進む
# DisplayEffects は反転済みなので、末尾から取り出すと元の Effects 配列と同じ順序になる。
    data remove storage asset:effect DisplayEffects[-1]
    execute if data storage asset:effect DisplayEffects[0] run function asset_manager:effect/display/foreach
