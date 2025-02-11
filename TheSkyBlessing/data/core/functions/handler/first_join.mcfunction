#> core:handler/first_join
#
# 初回Join時に実行される
#
# @within function core:tick/player/

#> UserIDのIndex
# @private
    #declare score_holder $UserIDIndex

# 固有ユーザーID
    scoreboard players add $UserIDIndex Global 1
    scoreboard players operation @s UserID = $UserIDIndex Global

# Entity Storage 作成 ･ 取得
    function oh_my_dat:please
# お友達(概念)
    tag @s add Friend
# 無信仰にする
    execute unless predicate player_manager:is_believe/flora unless predicate player_manager:is_believe/nyaptov unless predicate player_manager:is_believe/rumor unless predicate player_manager:is_believe/urban unless predicate player_manager:is_believe/wi-ki run function player_manager:god/none/set_tag
# ステータス初期化
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Default set value {Heal:1d,ReceiveHeal:1d,Attack:{Base:1d,Physical:1d,Magic:1d,None:1d,Fire:1d,Water:1d,Thunder:1d},Defense:{Base:1d,Physical:1d,Magic:1d,None:1d,Fire:1d,Water:1d,Thunder:1d,Fall:1d},MaxMP:100d,MPRegen:1d,MaxHealth:20d}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Default
# 神器クールダウンの初期化
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown set value [{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0},{Value:-15,Max:0}]
# 名前を取得しておく
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run function lib:get_name/
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name set from storage lib: Return.Name

function metric:user_id

# 共通Join処理
    function core:handler/join

# リスポーンイベントが初回に発火しないように
    scoreboard players set @s RespawnEvent 81
