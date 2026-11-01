#> asset_manager:artifact/create/set_definition
#
# 神器の入口の宣言を ID を番号にした ROM に、入口を呼ぶ間に this に入れる Field と TSB の値を Namespace をキーにした置き場に書き込む
# give するたびに書き込むので、宣言を変えたら give し直せば反映される
#
# @within function asset:artifact/common/give

# ID が無いか ROM の番号の範囲外なら、別の番号の場所に書き込まないよう何もしない
    execute unless data storage asset:artifact ID run return fail
    execute store result score $DefinitionID Temporary run data get storage asset:artifact ID
    execute unless score $DefinitionID Temporary matches 0..65535 run return run scoreboard players reset $DefinitionID
    scoreboard players reset $DefinitionID

# 宣言を組む
    data modify storage asset:artifact Definition set value {Triggers:[]}
    data modify storage asset:artifact Definition.Namespace set from storage asset:artifact Namespace
    data modify storage asset:artifact Definition.Triggers set from storage asset:artifact Triggers

# this に入れる値を組む
# アイテムの TSB の値からは、個体ごとに変わる値と本体だけが使う値を除く
    data modify storage asset:artifact DefinitionThis set value {}
    data modify storage asset:artifact DefinitionThis set from storage asset:artifact Field
    data modify storage asset:artifact DefinitionThis.TSB set from storage asset:artifact Item.tag.TSB
    data remove storage asset:artifact DefinitionThis.TSB.UUID
    data remove storage asset:artifact DefinitionThis.TSB.Version
    data remove storage asset:artifact DefinitionThis.TSB.RemainingCount
    data remove storage asset:artifact DefinitionThis.TSB.TypeCooldown
    data remove storage asset:artifact DefinitionThis.TSB.SecondaryTypeCooldown
# 入口を呼ぶたびにここから読むので、this に入れる値だけが変わったときは購読の一覧を作り直さなくてよい
    execute if data storage asset:artifact Definition.Namespace run function asset_manager:artifact/create/set_this.m with storage asset:artifact Definition

# ID の番号の ROM に書き込む
    data modify storage api: Argument.Address set from storage asset:artifact ID
    function api:rom/please
    execute store success storage asset:artifact DefinitionChanged byte 1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact set from storage asset:artifact Definition

# 宣言が変わったら、その神器を持っているかもしれないプレイヤー全員の購読の一覧を作り直させる
    execute if data storage asset:artifact {DefinitionChanged:true} run tag @a add ArtifactSubscription.Outdated

# リセット
    data remove storage asset:artifact Definition
    data remove storage asset:artifact DefinitionThis
    data remove storage asset:artifact DefinitionChanged
