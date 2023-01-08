#> asset:mob/0220.vena_cana/attack/05.end_debuff
#
# デバフの終了処理を行うよ
#
# @within function asset:mob/0220.vena_cana/attack/04.player

# UUID
    data modify storage api: Argument.UUID set value [I;1,2,220,0]

# 補正の削除
    function api:modifier/attack/base/remove

# タグ削除
    tag @s remove 64.ElementReduct

# スコアリセット
    scoreboard players reset @s 64.DebuffTime
