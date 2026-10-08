#> asset_manager:artifact/triggers/using_item/reset_when_change_item
#
# アイテムを持ち替えるなどして前のアイテムデータと一致していない場合、そのスロットのアイテム使用時間値を0に設定します
#
# Q. なんでスニークトリガーと違って1じゃなくて0にしてるの？ A. 持ち替えた瞬間のtickではトリガーが発動しない方が好都合だから。
#
# @within function asset_manager:artifact/triggers/using_item/

# 変更のあったスロットのデータをリセットする
    execute if data storage asset:artifact EquipmentChanges[00]._{_:false} run scoreboard players set @s UsingItem.Mainhand 0
    execute if data storage asset:artifact EquipmentChanges[01]._{_:false} run scoreboard players set @s UsingItem.Offhand 0


# 1にリセットする方式（持ち替えた瞬間のtickでも発動する方式）のままだとどう不都合なのかの解説。
# 端的に言うと、持ち替えた時にusingItemトリガーが二度発動してしまうから。
# 本来進捗トリガーusing_itemは、アイテムを持ち替えた瞬間のtickでは必ず無効になる。
# ただ、実際のusing_itemの動作は1tick遅れてしまっているようで
#   1tick目: 右クリしたまま持ち替えた → この関数が発動し持ち替え先神器のusingItemトリガーが実行
#   2tick目: 持ち替えたのでマイクラが自動でusing_itemをオフにする （本来は持ち替えた瞬間の1tick目に起きているもの）
#   3tick目: 右クリしたままなのでusing_itemが再びオンになる → 持ち替え先神器のusingItemトリガーが実行 （←2回目！！！）
# ちなみに、この自動でオフにする動作はなんと起きない事がある （ホイールスクロールで持ち替えるか数字キーでやるかで変わる）
