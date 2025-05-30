#> core:_index.d
# @private

#> Global Vars
# @public
    #declare score_holder $PlayerCount
    #declare score_holder $LoadTime

#> Global Vars - Islands
# @within function
#   core:load_once
#   api:global_vars/islands_purified
#   api:global_vars/game_progress
#   api:global_vars/total_islands
#   asset_manager:island/dispel/successful
#   lib:message/common/*
    #declare score_holder $PurifiedIslands
    #declare score_holder $TotalIslands

# TODO 上記のGlobal VarsをPrivateにしてAPIに移行する

#> Global Vars - Difficulty
# @within
#   function
#       api:global_vars/get_difficulty
#       core:load_once
#       debug:change_difficulty/**
#       player_manager:god/change_difficulty/**
#       world_manager:force_difficulty
#   predicate
#       api:global_vars/difficulty/**
    #declare score_holder $Difficulty

#> Global Vars - UnlockedShardLevel
# @within
#   function
#     core:load_once
#     asset_manager:island/dispel/update_unlocked_shard_lv/*
#   loot_table
#     world_manager:fishing/*
    #declare score_holder $UnlockedShardLv

#> DeathTag
# @public
    #declare tag Death

#> RespawnTag
# @within function
#   core:handler/respawn*
#   asset_manager:effect/*
#   player_manager:grave/tick/check_with_user
#   core:tick/player/
    #declare tag InRespawnEvent

#> エリトラ用タグ
# @within
#   function core:handler/flying_elytra
#   function core:tick/player/post
#   predicate lib:is_flying_elytra
    #declare tag FlyingElytra

#> DistributedIntervalGroup
# @within function **6_distributed_interval
#declare score_holder $DistributeGroup
