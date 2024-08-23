// 10 test graph projection
CALL gds.graph.project(
    'titanic-test-graph',
    'PersonTest',
    '*',
    {
        nodeProperties: ['pclass', 'sex', 'age', 'sibsp', 'parch', 'fare']
    }
)
