#> asset_manager:artifact/triggers/trigger/
#
# 各神器ごとにトリガー処理を行う
#
# @within function asset_manager:artifact/triggers/

# バニラ攻撃をしているならフラグを建てる
    execute if data storage asset:artifact ArtifactEvents.Attack[{Type:"vanilla_melee"}] run tag @s add ShouldVanillaAttack
# アイテムを消費したなら処理する
    execute if data storage asset:artifact Old.Consumable.ID if entity @s[tag=TriggerFlag.UseItem] run function asset_manager:artifact/triggers/use_item/
    execute if data storage asset:artifact Old.Consumable.ID if entity @e[type=#arrows,distance=..5,limit=1] store result score $GameTime Temporary run data get storage global Time
    execute if data storage asset:artifact Old.Consumable.ID as @e[type=#arrows,distance=..5] if score @s ArrowOwnerUserID = @p[tag=this] UserID if score @s ArrowShotTick = $GameTime Temporary run tag @s add ShotArrow
    execute if data storage asset:artifact Old.Consumable.ID if entity @e[type=#arrows,tag=ShotArrow,distance=..5,limit=1] run function asset_manager:artifact/triggers/shot/
    tag @e[type=#arrows,distance=..5] remove ShotArrow
    scoreboard players reset $GameTime Temporary
# アイテムを消費している最中なら引き継ぐ
    execute if entity @s[tag=TriggerFlag.UsingItem] if data storage asset:artifact Old.Consumable.ID run function asset_manager:artifact/triggers/event/use_item/continue
# アイテムを消費していないなら解除する
    execute if entity @s[tag=!TriggerFlag.UsingItem] if data storage asset:artifact Old.Consumable.ID run function asset_manager:artifact/triggers/event/use_item/reset
    execute if entity @s[tag=!TriggerFlag.UsingItem] if data storage asset:artifact Old.Consumable.ID run function asset_manager:artifact/triggers/event/use_item/reset

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
    execute if entity @s[tag=ShouldVanillaAttack] as @e[type=#lib:living,type=!player,tag=Victim,tag=!Death,distance=..8] at @s run function api:mob/apply_to_forward_target/with_idempotent.m {CB:"asset_manager:artifact/triggers/vanilla/",IsForwardedOnly:true}

# リセット
    scoreboard players reset $SlotIndex Temporary
    data remove storage api: PersistentArgument.AdditionalMPHeal
    data remove storage asset:artifact NormalizedItemData
    tag @s remove ShouldVanillaAttack
    tag @s remove TriggerFlag.ClickCarrot
    tag @s remove TriggerFlag.UseItem
    tag @s remove TriggerFlag.Sneak
    tag @s remove TriggerFlag.UsingItem
