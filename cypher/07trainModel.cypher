// 07 学習モデル追加
CALL gds.beta.pipeline.nodeClassification.addLogisticRegression('titanic-pipeline-v4', {penalty: 0.0})
YIELD parameterSpace;
CALL gds.beta.pipeline.nodeClassification.addLogisticRegression('titanic-pipeline-v4', {penalty: 0.1})
YIELD parameterSpace;