// 06 configuration split
CALL gds.beta.pipeline.nodeClassification.configureSplit('titanic-pipeline-v4', {
 testFraction: 0.2,
  validationFolds: 5
})
YIELD splitConfig;