# Days Of The Week For A Calendar

```       
    a!localVariables(
        local!days: {
            a!map(day: "Sunday"),
            a!map(day: "Monday"),
            a!map(day: "Tuesday"),
            a!map(day: "Wednesday"),
            a!map(day: "Thursday"),
            a!map(day: "Friday"),
            a!map(day: "Saturday")
        },
        a!columnsLayout(
            columns: a!forEach(
            items: local!days,
            expression: a!columnLayout(
                contents: {
                a!cardLayout(
                    contents: {
                    a!richTextDisplayField(value: fv!item.day, align: "CENTER")
                    },
                    padding: "EVEN_LESS"
                )
                }
            )
            ),
            spacing: "NONE"
        )
    )
```