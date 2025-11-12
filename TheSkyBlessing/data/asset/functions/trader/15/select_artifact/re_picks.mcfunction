#> asset:trader/15/select_artifact/re_picks
#
#
#
# @within function asset:trader/15/select_artifact/combine_and_pick.m

#> Length
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Random

    #tellraw @a [{"text":"aaa aaaaaaaaaaaaaaaaa "},{"storage":"lib:","nbt":"Elements"}]

    data modify storage lib: Array set from storage lib: Elements
    data modify storage lib: Picks set value [0]
    execute store result score $CandidatesLength Temporary if data storage lib: Elements[]
    execute store result score $Random Temporary run random value 0..65535
    execute store result storage lib: Picks[0] int 1 run scoreboard players operation $Random Temporary %= $CandidatesLength Temporary
    function lib:array/picks

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $CandidatesLength Temporary
    #tellraw @a [{"text":"aaa aaaaaaaaaaaaaaaaa "},{"storage":"lib:","nbt":"Elements"}]
