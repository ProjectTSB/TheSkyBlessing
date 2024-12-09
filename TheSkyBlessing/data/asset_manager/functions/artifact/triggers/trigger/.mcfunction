#> asset_manager:artifact/triggers/trigger/
#
# 各神器ごとにトリガー処理を行う
#
# @within function asset_manager:artifact/triggers/

# バニラ攻撃をしているならフラグを建てる
    execute if data storage asset:artifact ArtifactEvents.Attack[{Type:"vanilla_melee"}] run tag @s add ShouldVanillaAttack

# 神器のデータを取得する
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:artifact New.ItemData
    function lib:array/reverse
    data modify storage asset:artifact New.CopiedItemData set from storage lib: Array
    function lib:array/session/close
# データを扱いやすくする
    scoreboard players set $SlotIndex Temporary -6
    function asset_manager:artifact/triggers/trigger/normalize/
# 各神器ごとに処理を実行する
    execute if data storage asset:artifact NormalizedItemData[0] run function asset_manager:artifact/triggers/trigger/foreach/

# 神器でバニラ攻撃を処理していないならダメージを与える
    execute if entity @s[tag=ShouldVanillaAttack] run function asset_manager:artifact/triggers/vanilla/

# リセット
    scoreboard players reset $SlotIndex Temporary
    data remove storage asset:artifact NormalizedItemData
    tag @s remove ShouldVanillaAttack
    tag @s remove TriggerFlag.ClickCarrot
    tag @s remove TriggerFlag.UseItem
    tag @s remove TriggerFlag.Sneak
    tag @s remove TriggerFlag.UsingItem
