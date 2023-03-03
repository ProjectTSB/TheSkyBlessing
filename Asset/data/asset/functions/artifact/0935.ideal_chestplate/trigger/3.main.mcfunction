#> asset:artifact/0935.ideal_chestplate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0935.ideal_chestplate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 全耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,935,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
# [ImportKey]: NobwRALgngDgpmAXGGB7ANlA5qgdmAGjAFdiBLAEyTAHYAzOgVgGYBOVxgWgCYaBDAAycALHTg1OrZgDYu06XWZ9ujBgEYAHGsJhcfALYJkgLE1AS5GAjfQAE2ojD4AnAwGck4AMapiuCEjWMibnDecPauYABufOjERuAAHkgCRFCJAL6pRI4UZMQuiNxEThAOPohJYHDo6GQwTkZqAuX2qMUQRuUe9rghSNJEAFbE+jBIBWAARnAAXmQ9ZURkTgCiVTV1SwCOxFGYAMp2gVSIdFF1C04AQtOz9pvbVVD7fIdIJ+h16QC6QA_3
# 多角形 1
    particle minecraft:end_rod ~ ~ ~ 0 0 -2 1 0
    particle minecraft:end_rod ~ ~ ~ 0.11547 0 -1.8 1 0
    particle minecraft:end_rod ~ ~ ~ 0.23094 0 -1.6 1 0
    particle minecraft:end_rod ~ ~ ~ 0.34641 0 -1.4 1 0
    particle minecraft:end_rod ~ ~ ~ 0.46188 0 -1.2 1 0
    particle minecraft:end_rod ~ ~ ~ 0.57735 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.69282 0 -0.8 1 0
    particle minecraft:end_rod ~ ~ ~ 0.80829 0 -0.6 1 0
    particle minecraft:end_rod ~ ~ ~ 0.92376 0 -0.4 1 0
    particle minecraft:end_rod ~ ~ ~ 1.03923 0 -0.2 1 0
    particle minecraft:end_rod ~ ~ ~ 1.1547 0 0 1 0
    particle minecraft:end_rod ~ ~ ~ 1.27017 0 0.2 1 0
    particle minecraft:end_rod ~ ~ ~ 1.38564 0 0.4 1 0
    particle minecraft:end_rod ~ ~ ~ 1.50111 0 0.6 1 0
    particle minecraft:end_rod ~ ~ ~ 1.61658 0 0.8 1 0
    particle minecraft:end_rod ~ ~ ~ 1.73205 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 1.61658 0 -0.8 1 0
    particle minecraft:end_rod ~ ~ ~ 1.50111 0 -0.6 1 0
    particle minecraft:end_rod ~ ~ ~ 1.38564 0 -0.4 1 0
    particle minecraft:end_rod ~ ~ ~ 1.27017 0 -0.2 1 0
    particle minecraft:end_rod ~ ~ ~ 1.1547 0 0 1 0
    particle minecraft:end_rod ~ ~ ~ 1.03923 0 0.2 1 0
    particle minecraft:end_rod ~ ~ ~ 0.92376 0 0.4 1 0
    particle minecraft:end_rod ~ ~ ~ 0.80829 0 0.6 1 0
    particle minecraft:end_rod ~ ~ ~ 0.69282 0 0.8 1 0
    particle minecraft:end_rod ~ ~ ~ 0.57735 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.46188 0 1.2 1 0
    particle minecraft:end_rod ~ ~ ~ 0.34641 0 1.4 1 0
    particle minecraft:end_rod ~ ~ ~ 0.23094 0 1.6 1 0
    particle minecraft:end_rod ~ ~ ~ 0.11547 0 1.8 1 0
    particle minecraft:end_rod ~ ~ ~ 1.73205 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 1.50111 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 1.27017 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 1.03923 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.80829 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.57735 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.34641 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.11547 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.11547 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.34641 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.57735 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.80829 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -1.03923 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -1.27017 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -1.50111 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ 0 0 2 1 0
    particle minecraft:end_rod ~ ~ ~ -0.11547 0 1.8 1 0
    particle minecraft:end_rod ~ ~ ~ -0.23094 0 1.6 1 0
    particle minecraft:end_rod ~ ~ ~ -0.34641 0 1.4 1 0
    particle minecraft:end_rod ~ ~ ~ -0.46188 0 1.2 1 0
    particle minecraft:end_rod ~ ~ ~ -0.57735 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.69282 0 0.8 1 0
    particle minecraft:end_rod ~ ~ ~ -0.80829 0 0.6 1 0
    particle minecraft:end_rod ~ ~ ~ -0.92376 0 0.4 1 0
    particle minecraft:end_rod ~ ~ ~ -1.03923 0 0.2 1 0
    particle minecraft:end_rod ~ ~ ~ -1.1547 0 0 1 0
    particle minecraft:end_rod ~ ~ ~ -1.27017 0 -0.2 1 0
    particle minecraft:end_rod ~ ~ ~ -1.38564 0 -0.4 1 0
    particle minecraft:end_rod ~ ~ ~ -1.50111 0 -0.6 1 0
    particle minecraft:end_rod ~ ~ ~ -1.61658 0 -0.8 1 0
    particle minecraft:end_rod ~ ~ ~ -1.73205 0 1 1 0
    particle minecraft:end_rod ~ ~ ~ -1.61658 0 0.8 1 0
    particle minecraft:end_rod ~ ~ ~ -1.50111 0 0.6 1 0
    particle minecraft:end_rod ~ ~ ~ -1.38564 0 0.4 1 0
    particle minecraft:end_rod ~ ~ ~ -1.27017 0 0.2 1 0
    particle minecraft:end_rod ~ ~ ~ -1.1547 0 0 1 0
    particle minecraft:end_rod ~ ~ ~ -1.03923 0 -0.2 1 0
    particle minecraft:end_rod ~ ~ ~ -0.92376 0 -0.4 1 0
    particle minecraft:end_rod ~ ~ ~ -0.80829 0 -0.6 1 0
    particle minecraft:end_rod ~ ~ ~ -0.69282 0 -0.8 1 0
    particle minecraft:end_rod ~ ~ ~ -0.57735 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.46188 0 -1.2 1 0
    particle minecraft:end_rod ~ ~ ~ -0.34641 0 -1.4 1 0
    particle minecraft:end_rod ~ ~ ~ -0.23094 0 -1.6 1 0
    particle minecraft:end_rod ~ ~ ~ -0.11547 0 -1.8 1 0
    particle minecraft:end_rod ~ ~ ~ -1.73205 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ -1.50111 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ -1.27017 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ -1.03923 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.80829 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.57735 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.34641 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ -0.11547 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.11547 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.34641 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.57735 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 0.80829 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 1.03923 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 1.27017 0 -1 1 0
    particle minecraft:end_rod ~ ~ ~ 1.50111 0 -1 1 0