#> asset_manager:artifact/triggers/equipments/set_and_modifier/filter/match_religion
#
# Temp.Item の神器を実行者の信仰で使えるかを返します
#
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_religion

# 開発者は信仰を問わない
    execute if entity @s[tag=DevPrivilege] if data storage asset:artifact Temp.Item.CanUsedGod[0] run return 1

# 信仰している神が CanUsedGod に入っていれば 1 を返す
    execute if entity @s[tag=Believe.Flora] if data storage asset:artifact Temp.Item{CanUsedGod:["Flora"]} run return 1
    execute if entity @s[tag=Believe.Nyaptov] if data storage asset:artifact Temp.Item{CanUsedGod:["Nyaptov"]} run return 1
    execute if entity @s[tag=Believe.Rumor] if data storage asset:artifact Temp.Item{CanUsedGod:["Rumor"]} run return 1
    execute if entity @s[tag=Believe.Urban] if data storage asset:artifact Temp.Item{CanUsedGod:["Urban"]} run return 1
    execute if entity @s[tag=Believe.Wi-ki] if data storage asset:artifact Temp.Item{CanUsedGod:["Wi-ki"]} run return 1
# どの神にも当てはまらなければ失敗を返す
    return fail
