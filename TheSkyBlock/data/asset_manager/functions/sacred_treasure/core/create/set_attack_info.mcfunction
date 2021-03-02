#> asset_manager:sacred_treasure/core/create/set_attack_info
#
# 攻撃に関する情報をLoreに追加します
#
# @within function asset_manager:sacred_treasure/core/create/set_lore

    # 初期化
        data modify storage asset:sacred_treasure Line1 set value ['{"text":"???"}','""']
        data modify storage asset:sacred_treasure Line2 set value ['{"text":"物理 ","color":"dark_gray"}','{"text":"魔法 ","color":"dark_gray"}','{"text":"火 ","color":"dark_gray"}','{"text":"水 ","color":"dark_gray"}','{"text":"雷 ","color":"dark_gray"}','{"text":"無 ","color":"dark_gray"}']

    # ダメージ量を表示 //未設定-???
        # List(要素数1)のとき
            execute if data storage asset:sacred_treasure AttackInfo.Damage[0] run data modify storage asset:sacred_treasure Line1[0] set value '[{"storage":"asset:sacred_treasure","nbt":"AttackInfo.Damage[0]"}]'
        # List(要素数2)のとき
            execute if data storage asset:sacred_treasure AttackInfo.Damage[1] run data modify storage asset:sacred_treasure Line1[0] set value '[{"storage":"asset:sacred_treasure","nbt":"AttackInfo.Damage[0]"},{"text":"-"},{"storage":"asset:sacred_treasure","nbt":"AttackInfo.Damage[1]"}]'

    # 貫通/非貫通 軽減/非軽減を表示 //未設定-軽減非貫通
        execute if data storage asset:sacred_treasure {AttackInfo:{BypassResist:1b}} run data modify storage asset:sacred_treasure Line1[1] set value '{"text":"[防御無視]"}'

    # 物理/魔法を表示 //未設定-物理
        execute if data storage asset:sacred_treasure {AttackInfo:{AttackType:[Physical]}} run data modify storage asset:sacred_treasure Line2[0] set value '{"text":"物理 ","color":"dark_green"}'
        execute if data storage asset:sacred_treasure {AttackInfo:{AttackType:[Magic]}} run data modify storage asset:sacred_treasure Line2[1] set value '{"text":"魔法 ","color":"dark_purple"}'

        execute unless data storage asset:sacred_treasure AttackInfo.AttackType[0] run data modify storage asset:sacred_treasure Line2[0] set value '{"text":"物理 ","color":"dark_green"}'
    # 属性を表示 //未設定-無
        execute if data storage asset:sacred_treasure {AttackInfo:{ElementType:[Fire]}} run data modify storage asset:sacred_treasure Line2[2] set value '{"text":"火 ","color":"red"}'
        execute if data storage asset:sacred_treasure {AttackInfo:{ElementType:[Water]}} run data modify storage asset:sacred_treasure Line2[3] set value '{"text":"水 ","color":"aqua"}'
        execute if data storage asset:sacred_treasure {AttackInfo:{ElementType:[Thunder]}} run data modify storage asset:sacred_treasure Line2[4] set value '{"text":"雷 ","color":"yellow"}'
        execute if data storage asset:sacred_treasure {AttackInfo:{ElementType:[None]}} run data modify storage asset:sacred_treasure Line2[5] set value '{"text":"無 ","color":"white"}'

        execute unless data storage asset:sacred_treasure AttackInfo.ElementType[0] run data modify storage asset:sacred_treasure Line2[5] set value '{"text":"無 ","color":"white"}'

    # lootしてLoreに落とし込む
        loot replace block 10000 0 10000 container.2 loot asset_manager:sacred_treasure/core/generate_lore/attack_info

    # リセット
        data remove storage asset:sacred_treasure Line1
        data remove storage asset:sacred_treasure Line2