#> asset:mob/0210.aurora_eye/player_process/03.end_debuff
#
# デバフの終了処理だよ
#
# @within function asset:mob/0210.aurora_eye/player_process/02.main

# タグ削除
    tag @s remove 5U.Debuff

# スコアリセット
    scoreboard players reset @s 5U.DebuffTime

# MP消費量減少を削除
    data modify storage api: Argument.UUID set value [I;1,2,210,0]
    function api:player_modifier/mp_regen/remove