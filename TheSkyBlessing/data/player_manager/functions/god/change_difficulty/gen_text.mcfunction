#> player_manager:god/change_difficulty/gen_text
#
# 数値から難易度のテキストを生成する
#
# @within function core:load_once

data modify storage player_manager:god Difficulty.RawText set value ["UNUSED",'{"text":"Normal","color":"green","bold":true}','{"text":"Hard","color":"red","bold":true}','{"text":"Blessless","color":"dark_purple","bold":true}']
data modify storage player_manager:god Difficulty.Text set value ["UNUSED",'{"text":"Normal","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"マイクラ初心者向け\\n"},{"text":"- 敵の体力・攻撃力が減少\\n"},{"text":"- 敵の行動が単純化"}]}}','{"text":"Hard","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"自信のあるプレイヤー向け\\n（デフォルト）\\n"},{"text":"- 敵の体力・攻撃力は普通"}]}}','{"text":"Blessless","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"自身の腕を試したいプレイヤー向け\\n"},{"text":"- 敵の体力が大幅に増加\\n"},{"text":"- 敵の攻撃力が増加\\n"},{"text":"- 敵の行動が強化及び複雑化"}]}}']
