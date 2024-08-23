// 02 graph projection
CALL gds.graph.project(
    'titanic-graph',
    'Person',
    '*',
    {
        nodeProperties: ['pclass', 'sex', 'age', 'sibsp', 'parch', 'fare', 'survived']
    }
)