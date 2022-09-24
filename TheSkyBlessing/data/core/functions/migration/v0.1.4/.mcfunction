#> core:migration/v0.1.4/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v0.1.4"

#> fix teleporter bug
# @private
#declare storage asset:teleporter
data modify storage asset:teleporter Teleporters[].ID append value 0
data remove storage asset:teleporter Teleporters[{ID:[]}]

#> from: e80055bf9f185e8154489e1c7d7ea0cbf8293998
# @private
scoreboard objectives add ChunkLoadWaitingTime dummy {"text":"プレイヤーの周囲のチャンクロードが終了するまでの待ち時間"}

#> from: b4073d1466557d33877ed430b3566a97add6651e
data modify storage global GodIcon.Flora set value '{"text":"\\uE010","color":"white","font":"tsb"}'
data modify storage global GodIcon.Urban set value '{"text":"\\uE011","color":"white","font":"tsb"}'
data modify storage global GodIcon.Nyaptov set value '{"text":"\\uE012","color":"white","font":"tsb"}'
data modify storage global GodIcon.Wi-ki set value '{"text":"\\uE013","color":"white","font":"tsb"}'
data modify storage global GodIcon.Rumor set value '{"text":"\\uE014","color":"white","font":"tsb"}'

#> from: 61c9ba4adb1482b9f000fa66ad3f4669dec0e840
execute in overworld run forceload add 62 -12
execute in overworld run forceload add 3040 -544 3103 -481
execute in overworld run forceload add 2922 -1333 2934 -1313
execute in overworld run forceload add 2976 -144 3007 -129
execute in overworld run forceload add 3448 -472
execute in overworld run forceload add 2915 -862
execute in overworld run forceload add 3056 -896 3087 -881
execute in overworld run forceload add 3411 -630