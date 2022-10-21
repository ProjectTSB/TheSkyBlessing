#> asset:mob/0022.red_knight/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0022.red_knight/tick/1.trigger

# モデルのアマスタを確認
    function asset:mob/0022.red_knight/tick/armor_stand_check

# モデルを呼ぶ
    function asset:mob/0022.red_knight/tick/move/call_model

# 開幕
    execute if entity @s[tag=M.Opening] run function asset:mob/0022.red_knight/tick/wait_time/opening/tick

# 戦闘動作
    execute if entity @s[tag=!M.Opening] run function asset:mob/0022.red_knight/tick/wait_time/base_move/tick

# スコア加算
    scoreboard players add @s[tag=!M.TickLock] M.Tick 1

# モデルのアマスタからタグを外す
    tag @e[type=armor_stand,tag=M.ModelChangeTarget,distance=..0.5,limit=2] remove M.ModelChangeTarget