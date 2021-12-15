#> player_manager:god/mercy/
#
#
#
# @within function player_manager:god/*/in_temple

# トリガー有効化
    scoreboard players enable @s Believe
# トリガー付きメッセージ
    tellraw @s [{"text":"[供物を調べる]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe set 3"}}]
    tellraw @s [{"text":"[慈悲を乞う]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe set 4"}}]
# リスナーの登録
    schedule function player_manager:god/mercy/listener 1t