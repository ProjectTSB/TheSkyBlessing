#> core:load_once
#
# #load時に一回のみ実行される処理群
#
# @within function core:load

#> Internal
# @internal
    #declare storage core:global
data modify storage core:global Install set value true

#> EventHandlers
# @within function
#   core:handler/*
#   core:tick
    scoreboard objectives add FirstJoinEvent custom:play_one_minute {"text":"イベント: 初回Join"}
    scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: 再Join"}
    scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
    scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}