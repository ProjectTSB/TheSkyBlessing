#> asset:mob/0285.meteor_rain_emitter/tick/event/summon_meteor
#
#
#
# @within function asset:mob/0285.meteor_rain_emitter/tick/event/cast_meteor

#>
# @private
#declare tag EntitySpreader
#declare tag 7W.Init
#declare scoreboard 7W.UserID

# 拡散用marker召喚
    summon marker ~ ~0.5 ~ {Tags:["EntitySpreader"]}
    data modify storage lib: Argument.Bounds set value [[32d,32d],[10d,0d],[32d,32d]]
    execute as @e[type=marker,tag=EntitySpreader] at @s run function lib:spread_entity/

# モブIDを指定
    data modify storage api: Argument.ID set value 284
# 拡散したマーカーの上空に召喚
    execute at @e[type=marker,tag=EntitySpreader] positioned ~ ~40 ~ run function api:mob/summon

# 自身のIDを発射体にも付与
    scoreboard players operation @e[type=armor_stand,tag=7W.Init,distance=..50] 7W.UserID = @s 7X.UserID

# 拡散マーカーを消す
   kill @e[type=marker,tag=EntitySpreader]