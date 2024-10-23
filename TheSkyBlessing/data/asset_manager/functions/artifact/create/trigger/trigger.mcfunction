#> asset_manager:artifact/create/trigger/trigger
#
# 使用の条件を設定します
#
# @within function asset_manager:artifact/create/trigger/

# 指定スロットがhotbarでかつ重複可能か
    execute if data storage asset:artifact Trigger{Slot:"hotbar",EnableDuplication:true} run data modify storage asset:artifact Temp.EnableDuplication set value "[重複可能] "

# スロット
    execute if data storage asset:artifact Trigger{Slot:"auto"} run data modify storage asset:artifact Temp.Trigger.A set value "どちらかの手に所持"
    execute if data storage asset:artifact Trigger{Slot:"mainhand"} run data modify storage asset:artifact Temp.Trigger.A set value "メインハンドに所持"
    execute if data storage asset:artifact Trigger{Slot:"offhand"} run data modify storage asset:artifact Temp.Trigger.A set value "オフハンドに所持"
    execute if data storage asset:artifact Trigger{Slot:"head"} run data modify storage asset:artifact Temp.Trigger.A set value "装備"
    execute if data storage asset:artifact Trigger{Slot:"chest"} run data modify storage asset:artifact Temp.Trigger.A set value "装備"
    execute if data storage asset:artifact Trigger{Slot:"legs"} run data modify storage asset:artifact Temp.Trigger.A set value "装備"
    execute if data storage asset:artifact Trigger{Slot:"feet"} run data modify storage asset:artifact Temp.Trigger.A set value "装備"
    execute if data storage asset:artifact Trigger{Slot:"inventory"} run data modify storage asset:artifact Temp.Trigger.A set value "インベントリ内に保持"
    execute if data storage asset:artifact Trigger{Slot:"hotbar"} run data modify storage asset:artifact Temp.Trigger.A set value "ホットバーに保持"
# 接続詞
    data modify storage asset:artifact Temp.Trigger.AB set value "し"
# トリガー
    execute if data storage asset:artifact Trigger{Trigger:"onClick"} run data modify storage asset:artifact Temp.Trigger.B set value "右クリック"
    execute if data storage asset:artifact Trigger{Trigger:"shot"} run data modify storage asset:artifact Temp.Trigger.B set value "発射"
    execute if data storage asset:artifact Trigger{Trigger:"itemUse"} run data modify storage asset:artifact Temp.Trigger.B set value "使用"
    execute if data storage asset:artifact Trigger{Trigger:"passive"} run data modify storage asset:artifact Temp.Trigger.B set value "ている限り"
    execute if data storage asset:artifact Trigger{Trigger:"onAttack"} run data modify storage asset:artifact Temp.Trigger.B set value "攻撃"
    execute if data storage asset:artifact Trigger{Trigger:"onAttackByMelee"} run data modify storage asset:artifact Temp.Trigger.B set value "近接攻撃"
    execute if data storage asset:artifact Trigger{Trigger:"onAttackByProjectile"} run data modify storage asset:artifact Temp.Trigger.B set value "遠距離攻撃"
    execute if data storage asset:artifact Trigger{Trigger:"onDamage"} run data modify storage asset:artifact Temp.Trigger.B set value "被ダメージ"
    execute if data storage asset:artifact Trigger{Trigger:"onDamageFromExplode"} run data modify storage asset:artifact Temp.Trigger.B set value "被爆発ダメージ"
    execute if data storage asset:artifact Trigger{Trigger:"onDamageFromBurn"} run data modify storage asset:artifact Temp.Trigger.B set value "被延焼ダメージ"
    execute if data storage asset:artifact Trigger{Trigger:"onDamageFromEntity"} run data modify storage asset:artifact Temp.Trigger.B set value "被攻撃ダメージ"
    execute if data storage asset:artifact Trigger{Trigger:"onDamageFromMelee"} run data modify storage asset:artifact Temp.Trigger.B set value "被近接ダメージ"
    execute if data storage asset:artifact Trigger{Trigger:"onDamageFromProjectile"} run data modify storage asset:artifact Temp.Trigger.B set value "被遠距離ダメージ"
    execute if data storage asset:artifact Trigger{Trigger:"onKilled"} run data modify storage asset:artifact Temp.Trigger.B set value "撃破"
    execute if data storage asset:artifact Trigger{Trigger:"onKilledByMelee"} run data modify storage asset:artifact Temp.Trigger.B set value "近接攻撃で撃破"
    execute if data storage asset:artifact Trigger{Trigger:"onKilledByProjectile"} run data modify storage asset:artifact Temp.Trigger.B set value "遠距離攻撃で撃破"
    execute if data storage asset:artifact Trigger{Trigger:"sneak"} run data modify storage asset:artifact Temp.Trigger.B set value "スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"sneak1s"} run data modify storage asset:artifact Temp.Trigger.B set value "1秒間スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"sneak2s"} run data modify storage asset:artifact Temp.Trigger.B set value "2秒間スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"sneak3s"} run data modify storage asset:artifact Temp.Trigger.B set value "3秒間スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"sneak4s"} run data modify storage asset:artifact Temp.Trigger.B set value "4秒間スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"sneak5s"} run data modify storage asset:artifact Temp.Trigger.B set value "5秒間スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"sneak10s"} run data modify storage asset:artifact Temp.Trigger.B set value "10秒間スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"keepSneak"} run data modify storage asset:artifact Temp.Trigger.B set value "0秒以上スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"keepSneak1s"} run data modify storage asset:artifact Temp.Trigger.B set value "1秒間以上スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"keepSneak2s"} run data modify storage asset:artifact Temp.Trigger.B set value "2秒間以上スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"keepSneak3s"} run data modify storage asset:artifact Temp.Trigger.B set value "3秒間以上スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"keepSneak4s"} run data modify storage asset:artifact Temp.Trigger.B set value "4秒間以上スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"keepSneak5s"} run data modify storage asset:artifact Temp.Trigger.B set value "5秒間以上スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"keepSneak10s"} run data modify storage asset:artifact Temp.Trigger.B set value "10秒間以上スニーク"
    execute if data storage asset:artifact Trigger{Trigger:"equipping"} run data modify storage asset:artifact Temp.Trigger.AB set value ""
    execute if data storage asset:artifact Trigger{Trigger:"equipping"} run data modify storage asset:artifact Temp.Trigger.B set value ""
    execute if data storage asset:artifact Trigger{Trigger:"onHeal"} run data modify storage asset:artifact Temp.Trigger.B set value "回復"
# 設定されてなかったらエラーメッセージ
    execute unless data storage asset:artifact Temp.Trigger.A run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないSlotが指定されています","color":"white"}]
    execute unless data storage asset:artifact Temp.Trigger.B run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないTriggerが指定されています","color":"white"}]
# 生成
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/trigger
# リセット
    data remove storage asset:artifact Temp
