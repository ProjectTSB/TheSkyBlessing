#> asset:sacred_treasure/0643.raimei_chestplate/trigger/3.3.tag_delete
#
# フルセット効果を消す
#
# @within function asset:sacred_treasure/????.raimei_*/trigger/dis_equip/main

# タグを消す
    tag @s remove HV.Full

# フルセット耐性を消す
    data modify storage api: Argument.UUID set value [I;1,1,643,0]
# 補正の追加
    function api:modifier/defense/thunder/remove