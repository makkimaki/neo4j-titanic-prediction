// 01 CSVデータロード：前処理済みcsvを数値型で読み取る方法
load csv with headers from "http://localhost:11001/project-ff0ca77b-711f-4ec9-862f-2dd43e0801b2/011_train.csv" as row
CREATE (p:Person {
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
    embarked: row.Embarked,
    survived: toInteger(row.Survived)
})

// 011 CSVデータロード：naiveな方法
load csv with headers from "http://localhost:11001/project-ff0ca77b-711f-4ec9-862f-2dd43e0801b2/01_train.csv" as row
CREATE (p:Person {
    id: toInteger(row.PassengerId),
    name: row.Name,
    pclass: toInteger(row.Pclass),
    sex: row.Sex,
    age: CASE row.Age WHEN '' THEN NULL ELSE toFloat(row.Age) END,
    sibsp: toInteger(row.SibSp),
    parch: toInteger(row.Parch),
    ticket: row.Ticket,
    fare: toFloat(row.Fare),
    cabin: row.Cabin,
    embarked: row.Embarked,
    survived: toInteger(row.Survived)
})