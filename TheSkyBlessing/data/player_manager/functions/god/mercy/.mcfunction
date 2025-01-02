#> player_manager:god/mercy/
#
#
#
# @within function
#   player_manager:god/*/in_temple
#   player_manager:god/mercy/on_check_offering

# トリガー有効化
    scoreboard players reset @s Believe3
    scoreboard players enable @s Believe3
# トリガー付きメッセージ
    tellraw @s [{"text":"[供物を調べる]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe3 set 1"}}]
    tellraw @s [{"text":"[慈悲を乞う]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe3 set 2"}}]
    tellraw @s [{"text":"[難易度を変える]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe3 set 3"}}]
# リスナーの登録
    schedule function player_manager:god/mercy/listener 1t
