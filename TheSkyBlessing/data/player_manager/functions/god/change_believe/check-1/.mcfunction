#> player_manager:god/change_believe/check-1/
#
#
#
# @within function
#   player_manager:god/change_believe/
#   player_manager:god/change_believe/on_check_blessing

# トリガー有効化
    scoreboard players reset @s Believe
    scoreboard players enable @s Believe
# トリガー付きメッセージ
    tellraw @s [{"text":"[この神を信仰する]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe set 1"}}]
    tellraw @s [{"text":"[この神の恩恵を見る]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe set 2"}}]
    tellraw @s [{"text":"[難易度を変える]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Believe set 3"}}]
# リスナーの登録
    schedule function player_manager:god/change_believe/check-1/listener 1t
