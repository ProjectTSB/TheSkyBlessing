#> player_manager:god/change_believe/check-2/
#
#
#
# @within function player_manager:god/change_believe/check-1/on_click

# トリガー有効化
    scoreboard players enable @s Believe2
# トリガー付きメッセージ
    tellraw @s [{"text":"今までに失ったアイテムが消滅しますが、本当に改宗しますか？\n"},{"text":"[改宗する]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe2 set 2"}}]
# リスナーの登録
    schedule function player_manager:god/change_believe/check-2/listener 1t