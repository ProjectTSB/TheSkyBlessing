#> asset_manager:artifact/create/trigger/trigger
#
# 使用の条件を設定します
#
# @within function asset_manager:artifact/create/trigger/

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
    execute if data storage asset:artifact {Trigger:                    "tick"} run data modify storage asset:artifact Temp.Trigger.B set value "ている限り"
    execute if data storage asset:artifact {Trigger:                   "click"} run data modify storage asset:artifact Temp.Trigger.B set value "右クリック"
    execute if data storage asset:artifact {Trigger:              "using_item"} run data modify storage asset:artifact Temp.Trigger.B set value "右クリック"
    execute if data storage asset:artifact {Trigger:                    "shot"} run data modify storage asset:artifact Temp.Trigger.B set value "発射"
    execute if data storage asset:artifact {Trigger:                "use_item"} run data modify storage asset:artifact Temp.Trigger.B set value "使用"
    execute if data storage asset:artifact {Trigger:                  "attack"} run data modify storage asset:artifact Temp.Trigger.B set value "攻撃"
    execute if data storage asset:artifact {Trigger:            "attack_melee"} run data modify storage asset:artifact Temp.Trigger.B set value "近接攻撃"
    execute if data storage asset:artifact {Trigger:       "attack_projectile"} run data modify storage asset:artifact Temp.Trigger.B set value "遠距離攻撃"
    execute if data storage asset:artifact {Trigger:        "attack_explosion"} run data modify storage asset:artifact Temp.Trigger.B set value "爆発攻撃"
    execute if data storage asset:artifact {Trigger:                  "damage"} run data modify storage asset:artifact Temp.Trigger.B set value "被ダメージ"
    execute if data storage asset:artifact {Trigger:            "damage_melee"} run data modify storage asset:artifact Temp.Trigger.B set value "被近接ダメージ"
    execute if data storage asset:artifact {Trigger:         "damage_drowning"} run data modify storage asset:artifact Temp.Trigger.B set value "溺れる"
    execute if data storage asset:artifact {Trigger:       "damage_projectile"} run data modify storage asset:artifact Temp.Trigger.B set value "被遠距離ダメージ"
    execute if data storage asset:artifact {Trigger:        "damage_explosion"} run data modify storage asset:artifact Temp.Trigger.B set value "被爆発ダメージ"
    execute if data storage asset:artifact {Trigger:             "damage_burn"} run data modify storage asset:artifact Temp.Trigger.B set value "被燃焼ダメージ"
    execute if data storage asset:artifact {Trigger:         "damage_freezing"} run data modify storage asset:artifact Temp.Trigger.B set value "被凍結ダメージ"
    execute if data storage asset:artifact {Trigger:        "damage_lightning"} run data modify storage asset:artifact Temp.Trigger.B set value "雷に打たれる"
    execute if data storage asset:artifact {Trigger:           "damage_entity"} run data modify storage asset:artifact Temp.Trigger.B set value "敵から被ダメージ"
    execute if data storage asset:artifact {Trigger:     "damage_entity_melee"} run data modify storage asset:artifact Temp.Trigger.B set value "敵から被近接ダメージ"
    execute if data storage asset:artifact {Trigger:"damage_entity_projectile"} run data modify storage asset:artifact Temp.Trigger.B set value "敵から被遠距離ダメージ"
    execute if data storage asset:artifact {Trigger: "damage_entity_explosion"} run data modify storage asset:artifact Temp.Trigger.B set value "敵から被爆発ダメージ"
    execute if data storage asset:artifact {Trigger:                    "kill"} run data modify storage asset:artifact Temp.Trigger.B set value "撃破"
    execute if data storage asset:artifact {Trigger:              "kill_melee"} run data modify storage asset:artifact Temp.Trigger.B set value "近接攻撃で撃破"
    execute if data storage asset:artifact {Trigger:         "kill_projectile"} run data modify storage asset:artifact Temp.Trigger.B set value "遠距離攻撃で撃破"
    execute if data storage asset:artifact {Trigger:          "kill_explosion"} run data modify storage asset:artifact Temp.Trigger.B set value "爆発攻撃で撃破"
    execute if data storage asset:artifact {Trigger:                   "sneak"} run data modify storage asset:artifact Temp.Trigger.B set value "スニーク"
    execute if data storage asset:artifact {Trigger:                "sneak_1s"} run data modify storage asset:artifact Temp.Trigger.B set value "1秒間スニーク"
    execute if data storage asset:artifact {Trigger:                "sneak_2s"} run data modify storage asset:artifact Temp.Trigger.B set value "2秒間スニーク"
    execute if data storage asset:artifact {Trigger:                "sneak_3s"} run data modify storage asset:artifact Temp.Trigger.B set value "3秒間スニーク"
    execute if data storage asset:artifact {Trigger:                "sneak_4s"} run data modify storage asset:artifact Temp.Trigger.B set value "4秒間スニーク"
    execute if data storage asset:artifact {Trigger:                "sneak_5s"} run data modify storage asset:artifact Temp.Trigger.B set value "5秒間スニーク"
    execute if data storage asset:artifact {Trigger:               "sneak_10s"} run data modify storage asset:artifact Temp.Trigger.B set value "10秒間スニーク"
    execute if data storage asset:artifact {Trigger:              "keep_sneak"} run data modify storage asset:artifact Temp.Trigger.B set value "0秒以上スニーク"
    execute if data storage asset:artifact {Trigger:           "keep_sneak_1s"} run data modify storage asset:artifact Temp.Trigger.B set value "1秒間以上スニーク"
    execute if data storage asset:artifact {Trigger:           "keep_sneak_2s"} run data modify storage asset:artifact Temp.Trigger.B set value "2秒間以上スニーク"
    execute if data storage asset:artifact {Trigger:           "keep_sneak_3s"} run data modify storage asset:artifact Temp.Trigger.B set value "3秒間以上スニーク"
    execute if data storage asset:artifact {Trigger:           "keep_sneak_4s"} run data modify storage asset:artifact Temp.Trigger.B set value "4秒間以上スニーク"
    execute if data storage asset:artifact {Trigger:           "keep_sneak_5s"} run data modify storage asset:artifact Temp.Trigger.B set value "5秒間以上スニーク"
    execute if data storage asset:artifact {Trigger:          "keep_sneak_10s"} run data modify storage asset:artifact Temp.Trigger.B set value "10秒間以上スニーク"
    execute if data storage asset:artifact {Trigger:                   "equip"} run data modify storage asset:artifact Temp.Trigger.AB set value ""
    execute if data storage asset:artifact {Trigger:                   "equip"} run data modify storage asset:artifact Temp.Trigger.B set value ""
    execute if data storage asset:artifact {Trigger:                    "heal"} run data modify storage asset:artifact Temp.Trigger.B set value "回復を与える"
    execute if data storage asset:artifact {Trigger:            "receive_heal"} run data modify storage asset:artifact Temp.Trigger.B set value "回復を受ける"
# 設定されてなかったらエラーメッセージ
    execute unless data storage asset:artifact Temp.Trigger.A run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないSlotが指定されています","color":"white"}]
    execute unless data storage asset:artifact Temp.Trigger.B run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないTriggerが指定されています","color":"white"}]
# 生成
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/trigger
# リセット
    data remove storage asset:artifact Temp
