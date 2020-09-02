#> entity_manager:lib/attack.custom
#
# 実行者のエンティティにダメージを与えます。
#
# この関数はパーティクルの有無, 防具を無視するか, 耐性エフェクトを無視するかを指定できます。
#
# 実行者はplayer以外かつHealthを持つEntityを持つEntityである必要があります。
#
# @input _score_
#   **$Damage ScoreDamage**
#       与えるダメージを100倍し入力
#   **$EPF ScoreDamage**
#       軽減効果のある[エンチャントプロテクションファクター](https://minecraft.gamepedia.com/Armor#Enchantments)の合計値
#   **$DisableParticle**
#       パーティクルを表示するか否か, bool値
#   **$BypassArmor**
#       防御力/防具強度を無視するか否か, bool値
#   **$BypassResistance**
#       耐性エフェクトを無視するか否か, bool値
#
# @! $EPFは値が未指定、もしくは-1以下の時 EntiyのProtectionを参照します
#
# @public

# Entityがプレイヤー以外かつHealthを持つEntityであれば実行
    execute if entity @s[team=!Null,type=!player] run function entity_manager:lib/core/attack