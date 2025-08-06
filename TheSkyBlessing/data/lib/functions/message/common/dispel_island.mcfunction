#> lib:message/common/dispel_island
#
# 「島を浄化した！」
#
# @within function asset_manager:island/dispel/successful

#> Private
# @private
    #declare score_holder $PlayTimeDecimal
    #declare score_holder $PlayTimeSeconds
    #declare score_holder $PlayTimeMinutes
    #declare score_holder $PlayTimeHours

# ゲーム進行度
    function api:global_vars/game_progress
    execute store result storage lib: Temp.Progress int 1 run data get storage api: Return.Progress 100

# プレイ時間
    scoreboard players operation $PlayTimeDecimal Temporary = $PlayTime Global
    scoreboard players operation $PlayTimeSeconds Temporary = $PlayTimeDecimal Temporary
    scoreboard players operation $PlayTimeSeconds Temporary /= $20 Const
    scoreboard players operation $PlayTimeMinutes Temporary = $PlayTimeSeconds Temporary
    scoreboard players operation $PlayTimeMinutes Temporary /= $60 Const
    scoreboard players operation $PlayTimeHours Temporary = $PlayTimeMinutes Temporary
    scoreboard players operation $PlayTimeHours Temporary /= $60 Const

    execute store result storage lib: Temp.Hours int 1 run scoreboard players get $PlayTimeHours Temporary
    execute store result storage lib: Temp.Minutes int 1 run scoreboard players operation $PlayTimeMinutes Temporary %= $60 Const
    execute store result storage lib: Temp.Seconds int 1 run scoreboard players operation $PlayTimeSeconds Temporary %= $60 Const
    execute store result storage lib: Temp.Decimal int 5 run scoreboard players operation $PlayTimeDecimal Temporary %= $20 Const

    execute if score $PlayTimeHours Temporary matches 0..9 run data modify storage lib: Temp.Time append value "0"
    data modify storage lib: Temp.Time append string storage lib: Temp.Hours
    data modify storage lib: Temp.Time append value ":"
    execute if score $PlayTimeMinutes Temporary matches 0..9 run data modify storage lib: Temp.Time append value "0"
    data modify storage lib: Temp.Time append string storage lib: Temp.Minutes
    data modify storage lib: Temp.Time append value ":"
    execute if score $PlayTimeSeconds Temporary matches 0..9 run data modify storage lib: Temp.Time append value "0"
    data modify storage lib: Temp.Time append string storage lib: Temp.Seconds
    data modify storage lib: Temp.Time append value "'"
    execute if score $PlayTimeDecimal Temporary matches 0..1 run data modify storage lib: Temp.Time append value "0"
    data modify storage lib: Temp.Time append string storage lib: Temp.Decimal

# タイトル
    title @a times 10 60 30
    title @a title [{"text":"ISLAND PURIFIED","bold":true,"color":"light_purple"}]
    execute if data storage global Config{ShowPlayTimeOnDispel: true} run title @a subtitle {"text":"","bold":false,"extra":[{"text":"PROGRESS ","color":"green"},{"score":{"name":"$PurifiedIslands","objective":"Global"},"color":"white"},{"text":"\u0002","font":"space"},{"text":"/","color":"gray"},{"text":"\u0002","font":"space"},{"score":{"name":"$TotalIslands","objective":"Global"},"color":"white"},{"text":"\u0002","font":"space"},{"text":"("},{"storage":"lib:","nbt":"Temp.Progress"},{"text":"%)  "},{"text":"TIME ","color":"gold"},{"storage":"lib:","nbt":"Temp.Time[]","separator":""}]}
    execute if data storage global Config{ShowPlayTimeOnDispel:false} run title @a subtitle {"text":"","bold":false,"extra":[{"text":"PROGRESS ","color":"green"},{"score":{"name":"$PurifiedIslands","objective":"Global"},"color":"white"},{"text":"\u0002","font":"space"},{"text":"/","color":"gray"},{"text":"\u0002","font":"space"},{"score":{"name":"$TotalIslands","objective":"Global"},"color":"white"},{"text":"\u0002","font":"space"},{"text":"("},{"storage":"lib:","nbt":"Temp.Progress"},{"text":"%)"}]}
# チャット
    tellraw @a [{"text":"[!] すべてのアイテムが神殿に返還された。","color":"yellow"}]

# リセット
    scoreboard players reset $PlayTimeHours Temporary
    scoreboard players reset $PlayTimeMinutes Temporary
    scoreboard players reset $PlayTimeSeconds Temporary
    scoreboard players reset $PlayTimeDecimal Temporary
    data remove storage lib: Temp
