#> player_manager:god/change_difficulty/confirm/
#
# 難易度変更の確認処理
#
# @within function player_manager:god/change_difficulty/request/on_click

# ロックをかける
    data modify storage player_manager:god Difficulty.Lock set value true
    data modify storage player_manager:god Difficulty.LockCount set value 600
    data modify storage player_manager:god Difficulty.Rejected set value false
# リスナー起動
    scoreboard players reset @a Believe5
    scoreboard players enable @a[tag=!Difficulty.Request] Believe5
    schedule function player_manager:god/change_difficulty/confirm/listener/ 1t replace

# 全体通知
    tellraw @a[tag=!Difficulty.Request] [{"selector":"@s"},{"text":"により、難易度変更の申請が行われました。"}]
    tellraw @a[tag=!Difficulty.Request] [{"text":"[!] この機能は試験的に実装されたものです","color":"red"}]
    # tellraw @a[tag=!Difficulty.Request] [{"text":"[!] 難易度を変更した場合、その情報は内部に記録されます","color":"red"}]
    execute if score $Difficulty Global matches 1 run tellraw @a[tag=!Difficulty.Request] [{"text":"現在の難易度: "},{"text":"イージー","color":"green"}]
    execute if score $Difficulty Global matches 2 run tellraw @a[tag=!Difficulty.Request] [{"text":"現在の難易度: "},{"text":"ノーマル","color":"yellow"}]
    execute if score $Difficulty Global matches 3.. run tellraw @a[tag=!Difficulty.Request] [{"text":"現在の難易度: "},{"text":"ハード","color":"red"}]
    execute if score @s Believe4 matches 1 run tellraw @a[tag= Difficulty.Request] [{"text":"難易度"},{"text":"イージー","color":"green"},{"text":"への変更申請を行いました。"}]
    execute if score @s Believe4 matches 1 run tellraw @a[tag=!Difficulty.Request] [{"text":"変更後の難易度: "},{"text":"イージー","color":"green"}]
    execute if score @s Believe4 matches 2 run tellraw @a[tag= Difficulty.Request] [{"text":"難易度"},{"text":"ノーマル","color":"yellow"},{"text":"への変更申請を行いました。"}]
    execute if score @s Believe4 matches 2 run tellraw @a[tag=!Difficulty.Request] [{"text":"変更後の難易度: "},{"text":"ノーマル","color":"yellow"}]
    execute if score @s Believe4 matches 3 run tellraw @a[tag= Difficulty.Request] [{"text":"難易度"},{"text":"ハード","color":"red"},{"text":"への変更申請を行いました。"}]
    execute if score @s Believe4 matches 3 run tellraw @a[tag=!Difficulty.Request] [{"text":"変更後の難易度: "},{"text":"ハード","color":"red"}]
    execute if entity @a[scores={Believe5=0}] run tellraw @a[tag= Difficulty.Request] [{"text":"却下がない場合、30秒経過ののち全プレイヤーの戦闘状態が解除されたときに難易度が変更されます。","color":"aqua"}]
    tellraw @a[tag=!Difficulty.Request] [{"text":"却下する場合は30秒以内に下の却下ボタンを押してください。","color":"aqua"}]
    tellraw @a[tag=!Difficulty.Request] [{"text":"[却下する]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger Believe5 set 1"}}]
