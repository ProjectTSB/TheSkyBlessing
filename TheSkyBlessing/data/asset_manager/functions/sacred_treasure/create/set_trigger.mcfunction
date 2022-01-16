#> asset_manager:sacred_treasure/create/set_trigger
#
# 使用の条件を設定します
#
# @within function asset_manager:sacred_treasure/create/set_lore

# スロット
    execute if data storage asset:sacred_treasure {Slot:"auto"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "どちらかの手に所持"
    execute if data storage asset:sacred_treasure {Slot:"mainhand"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "メインハンドに所持"
    execute if data storage asset:sacred_treasure {Slot:"offhand"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "オフハンドに所持"
    execute if data storage asset:sacred_treasure {Slot:"head"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "装備"
    execute if data storage asset:sacred_treasure {Slot:"chest"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "装備"
    execute if data storage asset:sacred_treasure {Slot:"legs"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "装備"
    execute if data storage asset:sacred_treasure {Slot:"feet"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "装備"
    execute if data storage asset:sacred_treasure {Slot:"inventory"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "インベントリ内に保持"
    execute if data storage asset:sacred_treasure {Slot:"hotbar"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "ホットバーに保持"
# 接続詞
    data modify storage asset:sacred_treasure Temp.Trigger.AB set value "し"
# トリガー
    execute if data storage asset:sacred_treasure {Trigger:"onClick"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "右クリック"
    execute if data storage asset:sacred_treasure {Trigger:"shot"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "発射"
    execute if data storage asset:sacred_treasure {Trigger:"itemUse"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "使用"
    execute if data storage asset:sacred_treasure {Trigger:"passive"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "ている限り"
    execute if data storage asset:sacred_treasure {Trigger:"onAttack"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "Entityを攻撃"
    execute if data storage asset:sacred_treasure {Trigger:"onAttackByMelee"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "Entityを近接攻撃"
    execute if data storage asset:sacred_treasure {Trigger:"onAttackByProjectile"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "Entityを遠距離攻撃"
    execute if data storage asset:sacred_treasure {Trigger:"onDamage"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "被ダメージ"
    execute if data storage asset:sacred_treasure {Trigger:"onDamageFromExplode"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "被爆発ダメージ"
    execute if data storage asset:sacred_treasure {Trigger:"onDamageFromBurn"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "被延焼ダメージ"
    execute if data storage asset:sacred_treasure {Trigger:"onDamageFromEntity"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "被攻撃ダメージ"
    execute if data storage asset:sacred_treasure {Trigger:"onDamageFromMelee"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "被近接ダメージ"
    execute if data storage asset:sacred_treasure {Trigger:"onDamageFromProjectile"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "被遠距離ダメージ"
    execute if data storage asset:sacred_treasure {Trigger:"onKilled"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "Entityを殺害"
    execute if data storage asset:sacred_treasure {Trigger:"onKilledByMelee"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "Entityを近接攻撃で殺害"
    execute if data storage asset:sacred_treasure {Trigger:"onKilledByProjectile"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "Entityを遠距離攻撃で殺害"
    execute if data storage asset:sacred_treasure {Trigger:"sneak"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"sneak1s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "1秒間スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"sneak2s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "2秒間スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"sneak3s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "3秒間スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"sneak4s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "4秒間スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"sneak5s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "5秒間スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"sneak10s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "10秒間スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"keepSneak"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "0秒以上スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"keepSneak1s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "1秒間以上スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"keepSneak2s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "2秒間以上スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"keepSneak3s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "3秒間以上スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"keepSneak4s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "4秒間以上スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"keepSneak5s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "5秒間以上スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"keepSneak10s"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "10秒間以上スニーク"
    execute if data storage asset:sacred_treasure {Trigger:"equipping"} run data modify storage asset:sacred_treasure Temp.Trigger.AB set value ""
    execute if data storage asset:sacred_treasure {Trigger:"equipping"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value ""
# 設定されてなかったらエラーメッセージ
    execute unless data storage asset:sacred_treasure Temp.Trigger.A run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないSlotが指定されています","color":"white"}]
    execute unless data storage asset:sacred_treasure Temp.Trigger.B run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないTriggerが指定されています","color":"white"}]
# 生成
    loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/generate_lore/trigger
# リセット
    data remove storage asset:sacred_treasure Temp