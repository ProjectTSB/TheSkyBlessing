#> core:handler/first_join
#
# 初回Join時に実行される
#
# @within function core:tick/player

#> UserIDのIndex
# @private
    #declare score_holder $UserIDIndex

# 固有ユーザーID
    scoreboard players add $UserIDIndex Global 1
    scoreboard players operation @s UserID = $UserIDIndex Global
# ステータス初期化
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers set value {Heal:1d,Attack:{Base:1d,Physical:1d,Magic:1d,None:1d,Fire:1d,Water:1d,Thunder:1d},Defense:{Base:1d,Physical:1d,Magic:1d,None:1d,Fire:1d,Water:1d,Thunder:1d},MPRegen:1d}
    function player_manager:bonus/update_health_bonus
    function player_manager:bonus/update_mp_bonus
    function player_manager:bonus/update_attack_bonus
    function player_manager:bonus/update_defense_bonus

# リスポーンイベントが初回に発火しないように
    scoreboard players set @s RespawnEvent 81