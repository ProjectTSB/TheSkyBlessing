---
title: ゲートウェイ接触時の低速落下は、自作の落下ダメージの回避策
description: ゲートウェイ周辺や落下ダメージを変更するとき、低速落下の付与を外してよいか判断するために読む
area: fall-damage
paths:
  - TheSkyBlessing/data/core/functions/tick/player/.mcfunction
  - TheSkyBlessing/data/player_manager/functions/fall_damage/deal_for_vulnerable.mcfunction
related:
  - docs/knowledge/runtime-components.md
---

# ゲートウェイ接触時の低速落下は、自作の落下ダメージの回避策

[player tick](../../../../TheSkyBlessing/data/core/functions/tick/player/.mcfunction) はゲートウェイとの重なりを調べ、接触しているプレイヤーに `slow_falling 1` を付与する。ユーザーが確認している目的は、自作の落下ダメージがテレポート時に誤って発生することへの対策である。[落下ダメージの適用条件](../../../../TheSkyBlessing/data/player_manager/functions/fall_damage/deal_for_vulnerable.mcfunction) は低速落下の付いたプレイヤーを除外するため、この2つの処理を一続きで読む。移動演出だけの効果として削除しない。誤発生の原因を特定・解消した場合、またはバージョンアップに伴い落下ダメージ倍率をattributeで制御する方式へ移行した場合には、この回避策が不要か再評価できる。今回の調査では誤発生の原因そのものは特定していない。
