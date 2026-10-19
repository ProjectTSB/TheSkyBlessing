---
title: 天候predicateはゲーム内の発動条件を表す
description: 天候で発動する機能を実装・整理するとき、エンドでの成立と二重加算の回避を確認するために読む
area: predicate
paths:
  - TheSkyBlessing/data/lib/predicates/weather
related:
  - docs/knowledge/runtime-components.md
---

# 天候predicateはゲーム内の発動条件を表す

`lib:weather` の [is_sunny](../../../../TheSkyBlessing/data/lib/predicates/weather/is_sunny.json)・[is_raining](../../../../TheSkyBlessing/data/lib/predicates/weather/is_raining.json)・[is_thundering](../../../../TheSkyBlessing/data/lib/predicates/weather/is_thundering.json) は、エンドではすべてtrueになる。雨が降らないエンドでも雨・雷雨の効果を発動可能にし、晴れだけが有利になることを避けるゲーム仕様である（ユーザー確認済み）。純粋なVanilla天候判定として排他的な分岐へ整理しない。[Flora の passive](../../../../TheSkyBlessing/data/player_manager/functions/god/flora/passive.mcfunction) が雷雨側に `unless predicate lib:dimension/is_end` を付けるのは、雨と雷雨の分岐で同じスコアを二重加算しないため。この例のように、複数の天候条件が同時成立してよいかを呼出側で判断する。
