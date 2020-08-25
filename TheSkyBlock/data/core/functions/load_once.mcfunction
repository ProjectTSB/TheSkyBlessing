#> core:load_once
#
# #load時に一回のみ実行される処理群
#
# @within function core:load

setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}
#alias vector shulkerA 10000 0 10000
#alias vector shulkerB 10000 1 10000
#alias vector worldSpawn 23 3 24

#> Internal
# @internal
    #declare storage core:debug
    scoreboard objectives add Temporary dummy {"text":"1tickで消す一時変数の保存用"}
    scoreboard objectives add Global dummy {"text":"常に値が設定される変数"}
    scoreboard objectives add Const dummy {"text":"定数類 変更厳禁"}
function core:const_define
data modify storage core:debug Prefix.DEBUG set value "§3DEBUG >> §r"
data modify storage core:debug Prefix.SUCCESS set value "§aSUCCESS >> §r"
data modify storage core:debug Prefix.FAILED set value "§cFAILED >> §r"
data modify storage core:debug Prefix.ERROR set value "§cERROR >> §r"
data modify storage core:debug Prefix.CRIT set value "§4CRITICAL >> §r"

#> EventHandlers
# @within function
#   core:handler/*
#   core:tick
    scoreboard objectives add FirstJoinEvent custom:play_one_minute {"text":"イベント: 初回Join"}
    scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: 再Join"}
    scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
    scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}