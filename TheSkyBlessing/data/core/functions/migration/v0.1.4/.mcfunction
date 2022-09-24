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

#> from: b4073d1466557d33877ed430b3566a97add6651e
data modify storage global GodIcon.Flora set value '{"text":"\\uE010","color":"white","font":"tsb"}'
data modify storage global GodIcon.Urban set value '{"text":"\\uE011","color":"white","font":"tsb"}'
data modify storage global GodIcon.Nyaptov set value '{"text":"\\uE012","color":"white","font":"tsb"}'
data modify storage global GodIcon.Wi-ki set value '{"text":"\\uE013","color":"white","font":"tsb"}'
data modify storage global GodIcon.Rumor set value '{"text":"\\uE014","color":"white","font":"tsb"}'