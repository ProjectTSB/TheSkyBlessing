#> lib:damage
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input **storage lib:**
#   **Damage**: float
#       与えるダメージを入力
#   **EPF**: int
#       軽減効果のある[エンチャントプロテクションファクター](https://minecraft.gamepedia.com/Armor#Enchantments)の合計値
#   **DisableParticle**: boolean
#       パーティクルを表示するか否か, bool値
#   **BypassArmor**: boolean
#       防御力/防具強度を無視するか否か, bool値
#   **BypassResistance**: boolean
#       耐性エフェクトを無視するか否か, bool値
# @context EPFが-1以下の時 EntityのProtectionを参照します
# @api

# 引数チェック
    execute unless data storage lib: Argument.Damage run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":"\nMissing Argument.Damage at lib:damage"}]
# Healthを持つEntityであれば実行
    execute if data storage lib: Argument.Damage if entity @s[team=!Null] run function lib:core/damage/attack