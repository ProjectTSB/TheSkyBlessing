#> asset_manager:artifact/triggers/equipments/set_and_modifier/filter/match_religion
#
# Temp.Item の神器を実行者の信仰で使えるかを返します
#
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_religion

# 開発者は信仰を問わない
    execute if entity @s[tag=DevPrivilege] if data storage asset:artifact Temp.Item.CanUsedGod[0] run return 1

# 信仰している神が CanUsedGod に入っていれば 1 を返す
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Flora"]} if function api:entity/player/is_believe/flora run return 1
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Nyaptov"]} if function api:entity/player/is_believe/nyaptov run return 1
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Rumor"]} if function api:entity/player/is_believe/rumor run return 1
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Urban"]} if function api:entity/player/is_believe/urban run return 1
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Wi-ki"]} if function api:entity/player/is_believe/wi-ki run return 1
# どの神にも当てはまらなければ失敗を返す
    return fail
