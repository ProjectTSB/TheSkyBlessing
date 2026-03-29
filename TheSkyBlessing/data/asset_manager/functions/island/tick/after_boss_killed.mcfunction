#> asset_manager:island/tick/after_boss_killed
#
#
#
# @within function asset_manager:island/tick/

# 再戦までのスコアのデクリメント
    scoreboard players remove @s CantDispelTime 1

# 0以下でなければreturn
    execute unless score @s CantDispelTime matches ..0 run return fail

# 0になったら諸々する

# DispelPhaseを戻す
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 0b

# スコアをリセット
    scoreboard players reset @s CantDispelTime
    tag @s remove CantDispel

# メッセージ
    tellraw @a "呪われた神器はまだ呪われている。あの石像は何度でも戦えるようだ"
