#> player_manager:show_tips
# @within function
#   core:handler/rejoin
#   world_manager:area/02.islands/on_entered

#> Private
# @private
#declare score_holder $TipRandom

tellraw @s {"text":"[TIPS] ","color":"aqua"}

execute store result score $TipRandom Temporary run function lib:random/with_biased/m {key:"player_manager:show_tips",max:21}
execute if score $TipRandom Temporary matches 00 run tellraw @s "石を掘ると確率で鉱石を入手できる。\n掘るピッケルに応じて確率は変化し、丸石よりも焼き石のほうが鉱石が出やすい。"
execute if score $TipRandom Temporary matches 01 run tellraw @s "スポナーをすべて破壊しなくても呪われた神器を解呪できる。"
execute if score $TipRandom Temporary matches 02 run tellraw @s "この世界では落下ダメージを通常よりも多く受ける。\n体力が増えても慢心しないようにしよう。"
execute if score $TipRandom Temporary matches 03 run tellraw @s "神にアイテムを回収されたとしても、慈悲を乞えば一部を取り戻せる。"
execute if score $TipRandom Temporary matches 04 run tellraw @s "奈落に落ちてしまっても、様々な神器の力で地上に帰ることが出来る。\n｢加護装備｣ もその一つだ。"
execute if score $TipRandom Temporary matches 05 run tellraw @s "取引中、Spaceキーを押すと左のタブで選択した取引を素早く用意できる。\n同じ取引を繰り返す時に活用しよう。"
execute if score $TipRandom Temporary matches 06 run tellraw @s "羊を刈るよりも農業をしたほうが効率よく通貨を集められる。"
execute if score $TipRandom Temporary matches 07 run tellraw @s "防具すら装備せずに戦闘することは無謀だ。\n防具神器が無い時は安価で買える簡易防具を必ず装備しよう。"
execute if score $TipRandom Temporary matches 08 run tellraw @s "雑貨屋で売られている ｢見通しの書｣ は自身や相手の情報を確認できる。\n手持ちの攻撃神器よりも相手が強力であったなら、挑むべきではない。"
execute if score $TipRandom Temporary matches 09 run tellraw @s "満腹度による体力の自動回復量は最大体力に比例する。"
execute if score $TipRandom Temporary matches 10 run tellraw @s "戦闘中、体力の自然回復量は著しく減少する。\n体力が尽きかけた時にいち早く戦闘から離脱するのも良い戦い方だろう。"
execute if score $TipRandom Temporary matches 11 run tellraw @s "全ての島にはいつでも訪れることが出来る。\nしかし、あなたより遥かに強い敵と相対することになるかもしれない。"
execute if score $TipRandom Temporary matches 12 run tellraw @s "多くの攻撃神器には種類別のクールダウンが存在する。\n同じ種別クールダウンを持つ神器はすぐには使うことができない。"
execute if score $TipRandom Temporary matches 13 run tellraw @s "天候・時間の概念がないエンドでは、それを条件とする神器をフルパワーで使用できる。"
execute if score $TipRandom Temporary matches 14 run tellraw @s [{"text":"敵が付与するデバフの強さには","color":"white"},{"text":"弱","color":"#FFDD66"},{"text":"と","color":"white"},{"text":"強","color":"#FFDD66"},{"text":"がある。\nアイコン左上の線の本数で判別できる。","color":"white"}]
execute if score $TipRandom Temporary matches 15 run tellraw @s "足元や広範囲に攻撃を行ってくる敵相手には、三人称視点を利用すると良いかもしれない。"
execute if score $TipRandom Temporary matches 16 run tellraw @s "ポーション商人の売るネクターは最も簡単に回復が出来る神器だ。\n回復神器を持っていない場合、素晴らしい回復手段となるだろう。"
execute if score $TipRandom Temporary matches 17 run tellraw @s "特殊クールダウンを持つ神器の殆どは非常に強力である。\n手強い相手への切り札として、意識して利用しよう。"
execute if score $TipRandom Temporary matches 18 run tellraw @s [{"text": "予備の羊毛や食料、帰還用神器入れとして","color":"white"},{"translate":"block.minecraft.shulker_box","color":"white"},{"text": "を利用すると快適に冒険できるだろう。","color":"white"}]
execute if score $TipRandom Temporary matches 19 run tellraw @s "遠くでふよふよ浮いている敵を狙いづらい時は、召喚神器の出番だ。\nあなたに代わって敵を片付けてくれる。"
execute if score $TipRandom Temporary matches 20 run tellraw @s "敵の撃破に手こずる場合は、神器の相性が悪いのかもしれない。\n信仰による恩恵や相手の属性耐性、神器同士の組み合わせを見直してみよう。"

# リセット
    scoreboard players reset $TipRandom Temporary
