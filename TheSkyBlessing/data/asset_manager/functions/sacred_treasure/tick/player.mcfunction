#> asset_manager:sacred_treasure/tick/player
#
#
#
# @within function core:tick/player

# トリガー処理
    function asset_manager:sacred_treasure/triggers/
# 神器使用条件失敗時ログのクールダウンを減らす
    scoreboard players remove @s[scores={CondFailLogCD=0..}] CondFailLogCD 1
# 神器クールダウン表示処理
    scoreboard players remove @s[scores={WeaponLogCD=0..}] WeaponLogCD 1
    execute if score @s WeaponLogCD matches 0.. run function asset_manager:sacred_treasure/show_cooldown/