#> player_manager:god/change_difficulty/gen_text
#
# 数値から難易度のテキストを生成する
#
# @within function core:load_once

data modify storage player_manager:god Difficulty.RawText set value ["UNUSED",'{"text":"Normal","color":"green","bold":true}','{"text":"Hard","color":"red","bold":true}','{"text":"Blessless","color":"dark_purple","bold":true}']
data modify storage player_manager:god Difficulty.Text set value ["UNUSED",'{"text":"Normal","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"普段サバイバルをメインとするくらいのプレイヤー向け (デフォルト)"}]}}','{"text":"Hard","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"歯ごたえのある戦闘を楽しみたいプレイヤー向け\\n"},{"text":"- 敵の体力が増加する\\n"},{"text":"- 敵の攻撃力が増加する\\n"},{"text":"- 一部の敵の行動がやや難しくなる"}]}}','{"text":"Blessless","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"救いなど無い\\n"},{"text":"- 敵の体力が大幅に増加する\\n"},{"text":"- 敵の攻撃力が大幅に増加する\\n"},{"text":"- 一部の敵の行動が大幅に難しくなる"}]}}']
