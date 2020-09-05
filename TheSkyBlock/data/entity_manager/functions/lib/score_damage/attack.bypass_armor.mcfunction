#> entity_manager:lib/score_damage/attack.bypass_armor
#
# 実行者のエンティティに **防御力/防具強度を貫通する** ダメージを与えます。
#
# この関数は防具効果を無視します。
#
# 実行者はplayer以外かつHealthを持つEntityを持つEntityである必要があります。
#
# @input _score_
#   **$Damage ScoreDamage**
#       与えるダメージを100倍し入力
#   **$EPF ScoreDamage**
#       軽減効果のある[エンチャントプロテクションファクター](https://minecraft.gamepedia.com/Armor#Enchantments)の合計値
#
# @! $EPFは値が未指定、もしくは-1以下の時 EntiyのProtectionを参照します
#
# @public

# フラグの設定
    scoreboard players set $DisableParticle Temporary 0
    scoreboard players set $BypassArmor Temporary 1
    scoreboard players set $BypassResistance Temporary 0
# Entityがプレイヤー以外かつHealthを持つEntityであれば実行
    execute if entity @s[team=!Null,type=!player] run function entity_manager:lib/score_damage/core/attack