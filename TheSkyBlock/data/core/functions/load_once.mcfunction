#> core:load_once
#
# #load時に一回のみ実行される処理群
#
# @within function core:load

#> Internal
# @internal
    #declare storage core:global
    #declare storage core:debug
data modify storage core:global Install set value true
data modify storage core:debug Prefix.DEBUG set value "§3DEBUG >> §r"
data modify storage core:debug Prefix.SUCCESS set value "§aSUCCESS >> §r"
data modify storage core:debug Prefix.FAILD set value "§cFAILD >> §r"
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