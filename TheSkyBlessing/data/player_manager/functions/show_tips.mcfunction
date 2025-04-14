#> player_manager:show_tips
# @within function
#   core:handler/rejoin
#   world_manager:area/02.islands/on_entered

#> Private
# @private
#declare score_holder $TipRandom

tellraw @s {"text":"[TIPS] ","color":"aqua"}

execute store result score $TipRandom Temporary run function lib:random/with_biased/m {key:"player_manager:show_tips",max:15}
execute if score $TipRandom Temporary matches 0 run tellraw @s {"text":"石を掘ることでそのピッケルに応じた確率で鉱石を入手することができる。\n丸石よりも焼き石のほうが確率が高い。","color":"white"}
execute if score $TipRandom Temporary matches 1 run tellraw @s {"text":"スポナーをすべて破壊しなくても呪われた神器を解呪することができる。","color":"white"}
execute if score $TipRandom Temporary matches 2 run tellraw @s {"text":"この世界は落下ダメージを通常より多く受ける。\n体力が増えたからと言って慢心しないようにしよう。","color":"white"}
execute if score $TipRandom Temporary matches 3 run tellraw @s {"text":"アイテムを没収されたとしても、慈悲を乞えば一部返してくれる。\nただし、慈悲にはアイテムが必要だ。","color":"white"}
execute if score $TipRandom Temporary matches 4 run tellraw @s {"text":"奈落に落ちてしまった時でも、様々の神器の力で地上に帰ることが出来る。\n｢加護装備｣ もその一つだ。","color":"white"}
execute if score $TipRandom Temporary matches 5 run tellraw @s {"text":"同じ取引を繰り返す場合、左のタブを選んで取引した後に、[space] キーを押すことで同じ取引を選択できる。","color":"white"}
execute if score $TipRandom Temporary matches 6 run tellraw @s {"text":"羊を刈るよりも農業をしたほうが効率よく通貨を集めることができる。","color":"white"}
execute if score $TipRandom Temporary matches 7 run tellraw @s {"text":"防具を装備せずに戦闘することは無謀である。\n簡易防具は安価で買うことが出来るので、もし防具神器が無いならば必ず装備しよう。","color":"white"}
execute if score $TipRandom Temporary matches 8 run tellraw @s {"text":"雑貨屋で売られている ｢見通しの書｣ は自身や相手の情報を見ることができる。\n手持ちの神器の火力が相手の撃破に不足しているなら、それは挑むべきではない。","color":"white"}
execute if score $TipRandom Temporary matches 9 run tellraw @s {"text":"満腹度による体力回復は最大体力に比例する。","color":"white"}
execute if score $TipRandom Temporary matches 10 run tellraw @s {"text":"あなたが戦闘をしている間、体力の自然回復は著しく減少する。\n損耗が多い場合は戦闘から離脱することも一つの戦い方と言えよう。","color":"white"}
execute if score $TipRandom Temporary matches 11 run tellraw @s {"text":"全ての島にはいつでも訪れることが出来る。\nただし、あなたより遥かに強い敵と相対することになる可能性にも注意だ。","color":"white"}
execute if score $TipRandom Temporary matches 12 run tellraw @s {"text":"多くの攻撃神器には種別クールダウンと呼ばれるクールダウンが存在する。\n同じ種別クールダウンを持つ神器はすぐには使うことができない。","color":"white"}
execute if score $TipRandom Temporary matches 13 run tellraw @s {"text":"エンドには天候・時間の概念がない。\nそのため、それを条件とする神器をフルパワーで使用できる。","color":"white"}
execute if score $TipRandom Temporary matches 14 run tellraw @s [{"text":"敵の付与するデバフの強さには","color":"white"},{"text":"[弱]","color":"#FFDD66"},{"text":"と","color":"white"},{"text":"[強]","color":"#FFDD66"},{"text":"が存在する。\nデバフの強さを判別するには、アイコン左上の線の本数を確認しよう。","color":"white"}]

# リセット
    scoreboard players reset $TipRandom Temporary
