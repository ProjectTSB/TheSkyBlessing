#> asset_manager:artifact/create/set_lore/2.attack_info
#
# 攻撃に関する情報をLoreに追加します
#
# @within function asset_manager:artifact/create/set_lore/

#> private
# @private
    #declare score_holder $IsList

    # 初期化
        data modify storage asset:artifact Line1 set value ['""','{"text":"???"}','[{"text":"範囲-"},{"text":"不明","color":"gray"}]','""']
        data modify storage asset:artifact Line2 set value ['{"storage":"global","nbt":"Icon.Attack.Physical","color":"#333333","interpret":true}','{"storage":"global","nbt":"Icon.Attack.Magic","color":"#333333","interpret":true}','{"storage":"global","nbt":"Icon.Attack.Fire","color":"#333333","interpret":true}','{"storage":"global","nbt":"Icon.Attack.Water","color":"#333333","interpret":true}','{"storage":"global","nbt":"Icon.Attack.Thunder","color":"#333333","interpret":true}','{"storage":"global","nbt":"Icon.Attack.None","color":"#333333","interpret":true}']


    # Line-1
        # 貫通/非貫通 軽減/非軽減を表示 //未設定-非表示
            execute if data storage asset:artifact {AttackInfo:{BypassResist:1b}} run data modify storage asset:artifact Line1[0] set value '{"text":"[防御無効] "}'

        # ダメージ量を表示 //未設定-???
            # Listかを確認
                execute if data storage asset:artifact AttackInfo.Damage[0] run scoreboard players set $IsList Temporary 1
                execute if data storage asset:artifact {AttackInfo:{Damage:[]}} run scoreboard players set $IsList Temporary 1
            # Literalのとき
                execute unless score $IsList Temporary matches 1.. if data storage asset:artifact AttackInfo.Damage run data modify storage asset:artifact Line1[1] set value '[{"storage":"asset:artifact","nbt":"AttackInfo.Damage"}]'
            # List(要素数1)のとき
                execute if score $IsList Temporary matches 1.. if data storage asset:artifact AttackInfo.Damage[0] run data modify storage asset:artifact Line1[1] set value '[{"storage":"asset:artifact","nbt":"AttackInfo.Damage[0]"}]'
            # List(要素数2)のとき
                execute if score $IsList Temporary matches 1.. if data storage asset:artifact AttackInfo.Damage[1] run data modify storage asset:artifact Line1[1] set value '[{"storage":"asset:artifact","nbt":"AttackInfo.Damage[0]"},{"text":"-"},{"storage":"asset:artifact","nbt":"AttackInfo.Damage[1]"}]'

        # 単体/確率範囲/条件範囲/常時範囲 を表示 //未設定-不明
            execute if data storage asset:artifact {AttackInfo:{IsRangeAttack:never}} run data modify storage asset:artifact Line1[2] set value '[{"text":"単体"}]'
            execute if data storage asset:artifact {AttackInfo:{IsRangeAttack:probability}} run data modify storage asset:artifact Line1[2] set value '[{"text":"範囲-"},{"text":"確率","color":"aqua"}]'
            execute if data storage asset:artifact {AttackInfo:{IsRangeAttack:condition}} run data modify storage asset:artifact Line1[2] set value '[{"text":"範囲-"},{"text":"条件","color":"green"}]'
            execute if data storage asset:artifact {AttackInfo:{IsRangeAttack:every}} run data modify storage asset:artifact Line1[2] set value '[{"text":"範囲-"},{"text":"常時","color":"gold"}]'

        # 攻撃範囲を表示 //未設定-非表示
            execute if data storage asset:artifact AttackInfo.AttackRange run data modify storage asset:artifact Line1[3] set value '[{"text":" 範囲:"},{"storage":"asset:artifact","nbt":"AttackInfo.AttackRange"},{"text":"m"}]'

    # Line-2
        # 物理/魔法を表示 //未設定-物理
            execute if data storage asset:artifact {AttackInfo:{AttackType:[Physical]}} run data modify storage asset:artifact Line2[0] set value '{"storage":"global","nbt":"Icon.Attack.Physical","color":"white","interpret":true}'
            execute if data storage asset:artifact {AttackInfo:{AttackType:[Magic]}} run data modify storage asset:artifact Line2[1] set value '{"storage":"global","nbt":"Icon.Attack.Magic","color":"white","interpret":true}'

            execute unless data storage asset:artifact AttackInfo.AttackType[0] run data modify storage asset:artifact Line2[0] set value '{"storage":"global","nbt":"Icon.Attack.Physical","color":"white","interpret":true}'

        # 属性を表示 //未設定-無
            execute if data storage asset:artifact {AttackInfo:{ElementType:[Fire]}} run data modify storage asset:artifact Line2[2] set value '{"storage":"global","nbt":"Icon.Attack.Fire","color":"white","interpret":true}'
            execute if data storage asset:artifact {AttackInfo:{ElementType:[Water]}} run data modify storage asset:artifact Line2[3] set value '{"storage":"global","nbt":"Icon.Attack.Water","color":"white","interpret":true}'
            execute if data storage asset:artifact {AttackInfo:{ElementType:[Thunder]}} run data modify storage asset:artifact Line2[4] set value '{"storage":"global","nbt":"Icon.Attack.Thunder","color":"white","interpret":true}'
            execute if data storage asset:artifact {AttackInfo:{ElementType:[None]}} run data modify storage asset:artifact Line2[5] set value '{"storage":"global","nbt":"Icon.Attack.None","color":"white","interpret":true}'

            execute unless data storage asset:artifact AttackInfo.ElementType[0] run data modify storage asset:artifact Line2[5] set value '{"storage":"global","nbt":"Icon.Attack.None","color":"white","interpret":true}'

    # lootしてLoreに落とし込む
        loot replace block 10000 0 10000 container.2 loot asset_manager:artifact/generate_lore/2.attack_info

    # リセット
        data remove storage asset:artifact Line1
        data remove storage asset:artifact Line2
        scoreboard players reset $IsList Temporary
