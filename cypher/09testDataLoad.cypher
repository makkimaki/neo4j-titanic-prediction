// 09 test CSVデータロード
load csv with headers from "http://localhost:11001/project-ff0ca77b-711f-4ec9-862f-2dd43e0801b2/011_test.csv" as row
CREATE (p:PersonTest {
    id: toInteger(row.PassengerId),
    name: row.Name,
    pclass: toInteger(row.Pclass),
    sex: toInteger(row.Sex),
    age: toFloat(row.Age),
    sibsp: toInteger(row.SibSp),
    parch: toInteger(row.Parch),
    ticket: row.Ticket,
    fare: toFloat(row.Fare),
    cabin: row.Cabin,
    embarked: row.Embarked
})