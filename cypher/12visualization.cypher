// 14 Person, PersonTestノードを可視化
// まず、Personノードを50個取得
MATCH (p:Person)
WITH COLLECT(p) AS persons

// 次に、PersonTestノードを50個取得
MATCH (pt:PersonTest)
WITH persons, COLLECT(pt) AS personTests

// それぞれ50個のペアを作成し、結果を返す
UNWIND RANGE(0, 49) AS idx
RETURN persons[idx] AS p, personTests[idx] AS pt
