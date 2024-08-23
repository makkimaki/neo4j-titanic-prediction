// 08 train実行
CALL gds.beta.pipeline.nodeClassification.train('titanic-graph', {
  pipeline: 'titanic-pipeline-v4',
  targetNodeLabels: ['Person'],
  modelName: 'titanic-pipeline-model-v4',
  targetProperty: 'survived',
  randomSeed: 7474,
  metrics: ['ACCURACY']
}) YIELD modelInfo
RETURN
  modelInfo.bestParameters AS winningModel,
  modelInfo.metrics.ACCURACY.train.avg AS avgTrainScore,
  modelInfo.metrics.ACCURACY.outerTrain AS outerTrainScore,
  modelInfo.metrics.ACCURACY.test AS testScore;