#> asset_manager:artifact/create/set_lore/trigger
#
# 使用の条件を設定します
#
# @within function asset_manager:artifact/create/set_lore/

# スロット
    execute if data storage asset:artifact {Slot:     "auto"} run data modify storage asset:artifact Temp.Trigger.A set value "どちらかの手に所持"
    execute if data storage asset:artifact {Slot: "mainhand"} run data modify storage asset:artifact Temp.Trigger.A set value "メインハンドに所持"
    execute if data storage asset:artifact {Slot:  "offhand"} run data modify storage asset:artifact Temp.Trigger.A set value "オフハンドに所持"
    execute if data storage asset:artifact {Slot:     "head"} run data modify storage asset:artifact Temp.Trigger.A set value "装備"
    execute if data storage asset:artifact {Slot:    "chest"} run data modify storage asset:artifact Temp.Trigger.A set value "装備"
    execute if data storage asset:artifact {Slot:     "legs"} run data modify storage asset:artifact Temp.Trigger.A set value "装備"
    execute if data storage asset:artifact {Slot:     "feet"} run data modify storage asset:artifact Temp.Trigger.A set value "装備"
    execute if data storage asset:artifact {Slot:"inventory"} run data modify storage asset:artifact Temp.Trigger.A set value "インベントリ内に保持"
    execute if data storage asset:artifact {Slot:   "hotbar"} run data modify storage asset:artifact Temp.Trigger.A set value "ホットバーに保持"
# 接続詞
    data modify storage asset:artifact Temp.Trigger.AB set value "し"
# トリガー
    execute if data storage asset:artifact {LoreTrigger:"onClick"} run data modify storage asset:artifact Temp.Trigger.B set value '{"keybind":"key.use"}'
    execute if data storage asset:artifact {LoreTrigger:"shot"} run data modify storage asset:artifact Temp.Trigger.B set value "発射"
    execute if data storage asset:artifact {LoreTrigger:"itemUse"} run data modify storage asset:artifact Temp.Trigger.B set value "使用"
    execute if data storage asset:artifact {LoreTrigger:"passive"} run data modify storage asset:artifact Temp.Trigger.B set value "ている限り"
    execute if data storage asset:artifact {LoreTrigger:"onAttack"} run data modify storage asset:artifact Temp.Trigger.B set value "攻撃"
    execute if data storage asset:artifact {LoreTrigger:"onAttackByMelee"} run data modify storage asset:artifact Temp.Trigger.B set value "近接攻撃"
    execute if data storage asset:artifact {LoreTrigger:"onAttackByProjectile"} run data modify storage asset:artifact Temp.Trigger.B set value "遠距離攻撃"
    execute if data storage asset:artifact {LoreTrigger:"onDamage"} run data modify storage asset:artifact Temp.Trigger.B set value "被ダメージ"
    execute if data storage asset:artifact {LoreTrigger:"onDamageFromExplode"} run data modify storage asset:artifact Temp.Trigger.B set value "被爆発ダメージ"
    execute if data storage asset:artifact {LoreTrigger:"onDamageFromBurn"} run data modify storage asset:artifact Temp.Trigger.B set value "被延焼ダメージ"
    execute if data storage asset:artifact {LoreTrigger:"onDamageFromEntity"} run data modify storage asset:artifact Temp.Trigger.B set value "被攻撃ダメージ"
    execute if data storage asset:artifact {LoreTrigger:"onDamageFromMelee"} run data modify storage asset:artifact Temp.Trigger.B set value "被近接ダメージ"
    execute if data storage asset:artifact {LoreTrigger:"onDamageFromProjectile"} run data modify storage asset:artifact Temp.Trigger.B set value "被遠距離ダメージ"
    execute if data storage asset:artifact {LoreTrigger:"onKilled"} run data modify storage asset:artifact Temp.Trigger.B set value "撃破"
    execute if data storage asset:artifact {LoreTrigger:"onKilledByMelee"} run data modify storage asset:artifact Temp.Trigger.B set value "近接攻撃で撃破"
    execute if data storage asset:artifact {LoreTrigger:"onKilledByProjectile"} run data modify storage asset:artifact Temp.Trigger.B set value "遠距離攻撃で撃破"
    execute if data storage asset:artifact {LoreTrigger:"sneak"} run data modify storage asset:artifact Temp.Trigger.B set value "スニーク"
    execute if data storage asset:artifact {LoreTrigger:"sneak0.5s"} run data modify storage asset:artifact Temp.Trigger.B set value "0.5秒間スニーク"
    execute if data storage asset:artifact {LoreTrigger:"sneak1s"} run data modify storage asset:artifact Temp.Trigger.B set value "1秒間スニーク"
    execute if data storage asset:artifact {LoreTrigger:"sneak2s"} run data modify storage asset:artifact Temp.Trigger.B set value "2秒間スニーク"
    execute if data storage asset:artifact {LoreTrigger:"sneak3s"} run data modify storage asset:artifact Temp.Trigger.B set value "3秒間スニーク"
    execute if data storage asset:artifact {LoreTrigger:"sneak4s"} run data modify storage asset:artifact Temp.Trigger.B set value "4秒間スニーク"
    execute if data storage asset:artifact {LoreTrigger:"sneak5s"} run data modify storage asset:artifact Temp.Trigger.B set value "5秒間スニーク"
    execute if data storage asset:artifact {LoreTrigger:"sneak10s"} run data modify storage asset:artifact Temp.Trigger.B set value "10秒間スニーク"
    execute if data storage asset:artifact {LoreTrigger:"keepSneak"} run data modify storage asset:artifact Temp.Trigger.B set value "0秒以上スニーク"
    execute if data storage asset:artifact {LoreTrigger:"keepSneak0.5s"} run data modify storage asset:artifact Temp.Trigger.B set value "0.5秒以上スニーク"
    execute if data storage asset:artifact {LoreTrigger:"keepSneak1s"} run data modify storage asset:artifact Temp.Trigger.B set value "1秒以上スニーク"
    execute if data storage asset:artifact {LoreTrigger:"keepSneak2s"} run data modify storage asset:artifact Temp.Trigger.B set value "2秒以上スニーク"
    execute if data storage asset:artifact {LoreTrigger:"keepSneak3s"} run data modify storage asset:artifact Temp.Trigger.B set value "3秒以上スニーク"
    execute if data storage asset:artifact {LoreTrigger:"keepSneak4s"} run data modify storage asset:artifact Temp.Trigger.B set value "4秒以上スニーク"
    execute if data storage asset:artifact {LoreTrigger:"keepSneak5s"} run data modify storage asset:artifact Temp.Trigger.B set value "5秒以上スニーク"
    execute if data storage asset:artifact {LoreTrigger:"keepSneak10s"} run data modify storage asset:artifact Temp.Trigger.B set value "10秒以上スニーク"

    execute if data storage asset:artifact {LoreTrigger:"usingItem"} run data modify storage asset:artifact Temp.Trigger.B set value '{"keybind":"key.use"}'
    execute if data storage asset:artifact {LoreTrigger:"usingItem0.5s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"0.5秒間"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"usingItem1s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"1秒間"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"usingItem2s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"2秒間"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"usingItem3s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"3秒間"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"usingItem4s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"4秒間"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"usingItem5s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"5秒間"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"usingItem10s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"10秒間"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"keepUsingItem"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"keybind":"key.use"},{"text":"長押し"}]'
    execute if data storage asset:artifact {LoreTrigger:"keepUsingItem0.5s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"0.5秒以上"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"keepUsingItem1s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"1秒以上"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"keepUsingItem2s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"2秒以上"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"keepUsingItem3s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"3秒以上"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"keepUsingItem4s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"4秒以上"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"keepUsingItem5s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"5秒以上"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"keepUsingItem10s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"10秒以上"},{"keybind":"key.use"}]'
    execute if data storage asset:artifact {LoreTrigger:"releaseUsingItem"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"keybind":"key.use"},{"text":"の後離す"}]'
    execute if data storage asset:artifact {LoreTrigger:"releaseUsingItem0.5s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"0.5秒以上"},{"keybind":"key.use"},{"text":"の後離す"}]'
    execute if data storage asset:artifact {LoreTrigger:"releaseUsingItem1s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"1秒以上"},{"keybind":"key.use"},{"text":"の後離す"}]'
    execute if data storage asset:artifact {LoreTrigger:"releaseUsingItem2s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"2秒以上"},{"keybind":"key.use"},{"text":"の後離す"}]'
    execute if data storage asset:artifact {LoreTrigger:"releaseUsingItem3s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"3秒以上"},{"keybind":"key.use"},{"text":"の後離す"}]'
    execute if data storage asset:artifact {LoreTrigger:"releaseUsingItem4s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"4秒以上"},{"keybind":"key.use"},{"text":"の後離す"}]'
    execute if data storage asset:artifact {LoreTrigger:"releaseUsingItem5s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"5秒以上"},{"keybind":"key.use"},{"text":"の後離す"}]'
    execute if data storage asset:artifact {LoreTrigger:"releaseUsingItem10s"} run data modify storage asset:artifact Temp.Trigger.B set value '[{"text":"10秒以上"},{"keybind":"key.use"},{"text":"の後離す"}]'

    execute if data storage asset:artifact {LoreTrigger:"equipping"} run data modify storage asset:artifact Temp.Trigger.AB set value ""
    execute if data storage asset:artifact {LoreTrigger:"equipping"} run data modify storage asset:artifact Temp.Trigger.B set value ""
    execute if data storage asset:artifact {LoreTrigger:"onHeal"} run data modify storage asset:artifact Temp.Trigger.B set value "回復を与える"
    execute if data storage asset:artifact {LoreTrigger:"onReceiveHeal"} run data modify storage asset:artifact Temp.Trigger.B set value "回復を受ける"
# 設定されてなかったらエラーメッセージ
    execute unless data storage asset:artifact Temp.Trigger.A run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないSlotが指定されています","color":"white"}]
    execute unless data storage asset:artifact Temp.Trigger.B run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないLoreTriggerが指定されています","color":"white"}]
# 生成
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/trigger
# リセット
    data remove storage asset:artifact Temp
