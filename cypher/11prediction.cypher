// 11 predict実行(stream mode) 
// streamだからか、当然繰り返し実行可能
CALL gds.beta.pipeline.nodeClassification.predict.stream('titanic-test-graph', {
  modelName: 'titanic-pipeline-model-v4',
  includePredictedProbabilities: true,
  targetNodeLabels: ["PersonTest"]
}) 
YIELD nodeId, predictedClass, predictedProbabilities
WITH gds.util.asNode(nodeId) AS personTestNode, predictedClass, predictedProbabilities
RETURN personTestNode.name, predictedClass, floor(predictedProbabilities[predictedClass]*100) AS confidence

// 12 projected graphのノードプロパティupdate(mutate mode)
CALL gds.beta.pipeline.nodeClassification.predict.mutate(
    "titanic-test-graph",
    {
        targetNodeLabels: ["PersonTest"],
        modelName: "titanic-pipeline-model-v4",
        mutateProperty: "predictedClass",
        predictedProbabilityProperty: "predictedProbabilities"
    }
)
YIELD nodePropertiesWritten

// 13 predicted propertyをDBに書き込む(write mode): writePropertyが必須
CALL gds.beta.pipeline.nodeClassification.predict.write('titanic-test-graph', {
  targetNodeLabels: ['PersonTest'],
  modelName: 'titanic-pipeline-model-v4',
  writeProperty: 'predictedClass',
  predictedProbabilityProperty: 'predictedProbabilities'
}) YIELD nodePropertiesWritten
