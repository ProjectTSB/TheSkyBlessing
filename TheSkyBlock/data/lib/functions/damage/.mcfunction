#> lib:damage/
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input
#   **storage lib: Argument.Damage** : float
#   与えるダメージ
#   **storage lib: Argument.AttackType** : Enum
#   `"Physical"`, `"Magic"`
#   **storage lib: Argument.ElementType** : Enum
#   `"None"`, `"Fire"`, `"Water"`, `"Thunder"`
#   **storage lib: Argument.DisableParticle** : boolean
#   パーティクルを表示しない否か
#   **storage lib: Argument.BypassArmor** : boolean
#   防御力/防具強度を無視するか否か
#   **storage lib: Argument.BypassResist** : boolean
#   耐性エフェクトを無視するか否か
# @api

# 引数チェック
    execute unless data storage lib: Argument.Damage run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Damage","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Damage at lib:damage"}}}]
    execute unless data storage lib: Argument.AttackType run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" AttackType","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument AttackType at lib:damage"}}}]
# Healthを持つEntityであれば実行
    execute if data storage lib: Argument.Damage if data storage lib: Argument.AttackType if entity @s[team=!Null] run function lib:damage/core/attack