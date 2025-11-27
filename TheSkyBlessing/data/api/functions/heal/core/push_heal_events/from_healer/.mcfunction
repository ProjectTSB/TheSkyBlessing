#> api:heal/core/push_heal_events/from_healer/
#
#
#
# @within function api:heal/core/push_heal_events/

#> Private
# @private
    #declare score_holder $ReceiverUUID

    scoreboard players operation $ReceiverUUID Temporary = @s UserID
    execute as @a if score @s UserID = $LatestModifiedUser UserID run function api:heal/core/push_heal_events/from_healer/push
    scoreboard players reset $ReceiverUUID Temporary
