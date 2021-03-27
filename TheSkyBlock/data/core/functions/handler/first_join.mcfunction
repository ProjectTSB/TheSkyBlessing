#> core:handler/first_join
#
# 初回Join時に実行される
#
# @within function core:tick

# 固有ユーザーID
    scoreboard players add $UserIDIndex Global 1
    scoreboard players operation @s UserID = $UserIDIndex Global
# MP周り
    scoreboard players set @s MP 100
    scoreboard players set @s MPMax 100
# 補正値
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers set value {Heal:1f,Damage:1f,AttackType:{Physical:1f,Magic:1f},ElementType:{None:1f,Fire:1f,Water:1f,Thunder:1f}}
# リスポーンイベントが初回に発火しないように
    scoreboard players set @s RespawnEvent 81