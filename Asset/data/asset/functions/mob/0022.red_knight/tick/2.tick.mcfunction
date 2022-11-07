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

# フェイズ2移行動作
    execute if entity @s[tag=M.HPless50per] run function asset:mob/0022.red_knight/tick/wait_time/phase2_transition/1.tick

# 本気オーラ
    execute if score @s M.Phase matches 2.. run particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.01 1
    execute if score @s M.Phase matches 2.. run particle minecraft:dust 0.7 0 0 1.5 ~ ~1 ~ 0.2 0.5 0.2 0.01 1

# スコア加算
    scoreboard players add @s[tag=!M.TickLock] M.Tick 1

# モデルのアマスタからタグを外す
    tag @e[type=armor_stand,tag=M.ModelChangeTarget,distance=..0.5,limit=2] remove M.ModelChangeTarget