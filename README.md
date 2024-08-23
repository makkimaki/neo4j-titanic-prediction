# neo4j-titanic-prediction

## 目的
- グラフDB上の機械学習を実施
- グラフ特有のリレーションを貼ることによる、予測精度への影響を分析

## 使用環境
- グラフDB：Neo4j Desktop
- python: m2 macbook
Graph Data Science libraryを使うために、AuraDSまたはDesktop版を使う必要あり。今回はDesktop版を使う。データフレームの加工はpython環境で行い、そのデータをロードする形とする。

### 使用環境のイメージ図


#　実験１：リレーションを特に作らず実施

#　実験２：リレーションをいくつか作成して実施
- キャビンノード：同室にいる人にリレーション作成。（また、これは家族になる可能性も高い）
コード参照：

# 注意
- `gds.beta.pipeline.nodeClassification.selectFeatures`
    - String型の特徴量は選択できない。したがって、事前に数値変換しておくなどが必要
    - また、一度pipelineで定義した特徴量選択を後から変更できない。特徴量サブセットを変更する場合は、pipelineを新しく作り直す必要がある模様(`titanic-pipeline-2`など)
- `gds.beta.pipeline.nodeClassification.train`
    - Null, NaNがあると実行できない。データフレームを読み込む時点で変換しておくなどが必要