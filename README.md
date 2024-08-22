# neo4j-titanic-prediction

## 目的
- グラフDB上の機械学習を実施
- グラフ特有のリレーションを貼ることによる、予測精度への影響を分析

## 使用環境
- グラフDB：Neo4j AuraDB（SaaS, DBaaS）
- python: m2 macbook
フルマネージドサービスであるAuraDBを使い、python環境からneo4j driver経由を通じて接続。AuraDB上のUI、python notebook両方からグラフDBへの書き込み・読み出しを行えるようにする。


#　実験１：リレーションを特に作らず実施

#　実験２：リレーションをいくつか作成して実施
