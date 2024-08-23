// 05 特徴量選択
CALL gds.beta.pipeline.nodeClassification.selectFeatures(
  'titanic-pipeline-v4',
   ['pclass', 'sex', 'age', 'sibsp', 'parch', 'fare'] 
) YIELD name, featureProperties
