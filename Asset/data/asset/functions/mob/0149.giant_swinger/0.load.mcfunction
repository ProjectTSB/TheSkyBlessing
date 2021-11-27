#> asset:mob/0149.giant_swinger/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#>
# 通常攻撃時の鎌を振るアニメーションのタイムカウンター
# @within function asset:mob/0149.giant_swinger/attack/2.attack
# @within function asset:mob/0149.giant_swinger/tick/2.tick
# @within function asset:mob/0149.giant_swinger/tick/scythe/2.2.scythe_tick
    scoreboard objectives add 45.MobAtkMotTime dummy

#>
# 鎌を大きく振る攻撃用
# プレイヤーが近くにいる時間のカウンター
# @within function asset:mob/0149.giant_swinger/tick/2.tick
    scoreboard objectives add 45.PlayerTimer dummy

#>
# 鎌を大きく振る攻撃のアニメーションタイムカウンター
# @within function asset:mob/0149.giant_swinger/tick/2.tick
# @within function asset:mob/0149.giant_swinger/tick/scythe/2.2.scythe_tick
    scoreboard objectives add 45.SwingMotTime dummy

#>
# 本体のMobUUIDをアマスタにコピーする時のコピー先objective
# @within
#   function asset:mob/0149.giant_swinger/tick/2.tick
#   function asset:mob/0149.giant_swinger/tick/2.1.summon_scythe
    scoreboard objectives add 45.PairUUID dummy