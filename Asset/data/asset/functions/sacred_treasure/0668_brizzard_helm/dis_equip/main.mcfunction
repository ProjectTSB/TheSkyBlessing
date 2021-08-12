#> asset:sacred_treasure/0668_brizzard_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0668_brizzard_helm/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,668,6]
# 補正の削除
    function api:player_modifier/defense/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,668,6]
# 補正の削除
    function api:player_modifier/defense/water/remove

# フルセット用のスコアリセット
      execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:668}}},{Slot:102b,tag:{TSB:{ID:669}}},{Slot:101b,tag:{TSB:{ID:670}}},{Slot:100b,tag:{TSB:{ID:671}}}]} run scoreboard players reset @s IL.BrizzardLoop