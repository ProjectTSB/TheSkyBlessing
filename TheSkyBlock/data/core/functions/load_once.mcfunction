#> core:load_once
#
# #load時に一回のみ実行される処理群
#
# @within function core:load

function core:define_gamerule

#> Datapack Order
# 0: TheSkyBlock
# 1: ScoreToHealth
# 2: OhMyDat
datapack disable "OhMyDat"
datapack disable "ScoreToHealth"
datapack enable "OhMyDat" after "TheSkyBlock"
datapack enable "ScoreToHealth" after "TheSkyBlock"
datapack enable "OhMyDat" after "ScoreToHealth"

#> エイリアス
# @public
    #alias vector shulkerA 10000 0 10000
    #alias vector shulkerB 10000 1 10000
    #alias vector worldSpawn 23 3 24
setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}

#> デバッグ用storage Prefix.<DEBUG,SUCCESS,FAILED,ERROR,CRIT>
# @public
    #declare storage global:debug
data modify storage global:debug Prefix.DEBUG set value "§3DEBUG >> §r"
data modify storage global:debug Prefix.SUCCESS set value "§aSUCCESS >> §r"
data modify storage global:debug Prefix.FAILED set value "§cFAILED >> §r"
data modify storage global:debug Prefix.ERROR set value "§cERROR >> §r"
data modify storage global:debug Prefix.CRIT set value "§4CRITICAL >> §r"

#> Healthを持つMobにフィルターする際に使用してください
#
# **teamとしては存在しません**
#
# @public
    #declare team Null

#> 1tickで消す一時変数の保存用
# @public
    scoreboard objectives add Temporary dummy

#> 常に値が設定される変数
# @public
    scoreboard objectives add Global dummy

#> 定数類 **変更厳禁**
# @public
    scoreboard objectives add Const dummy
function core:define_const


#> EventHandlers
# @within function
#   core:handler/*
#   core:tick
    scoreboard objectives add FirstJoinEvent custom:play_one_minute {"text":"イベント: 初回Join"}
    scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: 再Join"}
    scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
    scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}
    scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick {"text":"イベント: クリック 人参棒"}

#> PlayerManager
# @within function player_manager:adjust_hunger/**
    scoreboard objectives add HungerTarget dummy {"text":"目標の満腹度"}
    scoreboard objectives add Hunger food {"text":"現在の満腹度"}

#> PlayerManager
# @within function
#   core:handler/first_join
#   core:load_once
#   player_manager:**
    scoreboard objectives add Health health {"text":"♥","color":"#FF4c99"}
    scoreboard objectives add MP dummy {"text":"MP"}
    scoreboard objectives add MPMax dummy {"text":"MP上限値"}
scoreboard objectives setdisplay belowName Health