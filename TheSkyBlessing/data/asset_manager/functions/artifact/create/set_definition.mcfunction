#> asset_manager:artifact/create/set_definition
#
# 神器の入口の宣言と Field を、ID を番号にした ROM に書き込む
# give するたびに書き込むので、宣言や Field を変えたら give し直せば反映される
#
# @within function asset:artifact/common/give

# ID が無いか ROM の番号の範囲外なら、別の番号の場所に書き込まないよう何もしない
    execute unless data storage asset:artifact ID run return fail
    execute store result score $DefinitionID Temporary run data get storage asset:artifact ID
    execute unless score $DefinitionID Temporary matches 0..65535 run return run scoreboard players reset $DefinitionID
    scoreboard players reset $DefinitionID

# 宣言を組む
    data modify storage asset:artifact Definition set value {Triggers:[],Field:{}}
    data modify storage asset:artifact Definition.Namespace set from storage asset:artifact Namespace
    data modify storage asset:artifact Definition.Triggers set from storage asset:artifact Triggers
    data modify storage asset:artifact Definition.Field set from storage asset:artifact Field

# ID の番号の ROM に書き込む
    data modify storage api: Argument.Address set from storage asset:artifact ID
    function api:rom/please
    execute store success storage asset:artifact DefinitionChanged byte 1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact set from storage asset:artifact Definition

# 宣言か Field が変わったら、その神器を持っているかもしれないプレイヤー全員の神器のキャッシュを作り直させる
    execute if data storage asset:artifact {DefinitionChanged:true} run tag @a add ArtifactCache.Outdated

# リセット
    data remove storage asset:artifact Definition
    data remove storage asset:artifact DefinitionChanged
