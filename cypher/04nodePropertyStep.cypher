// 04 ノードプロパティステップ追加
CALL gds.beta.pipeline.nodeClassification.addNodeProperty('titanic-pipeline-v4', 'fastRP', {
  embeddingDimension: 32,
  randomSeed: 7474,
  mutateProperty:'embedding'
})
YIELD name, nodePropertySteps;

// 042 ノードプロパティステップ追加
CALL gds.beta.pipeline.nodeClassification.addNodeProperty('titanic-pipeline-v4', 'degree', {
  mutateProperty:'degree'
})
YIELD name, nodePropertySteps;