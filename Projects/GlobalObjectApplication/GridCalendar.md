# Grid Calendar
**Calender Component created with grid, that uses 1 Interface and 9 Expression Rules**

### GOA_GridCalendar
- Interface

        a!localVariables(
            local!date,
            local!calDate: if(a!isNotNullOrEmpty(local!date),
            split(local!date, "/"),
            null
            ),
            {
                a!dateField(
                label: "Date",
                labelPosition: "ABOVE",
                value: local!date,
                saveInto: local!date,
                validations: {}
                ),
                a!richTextDisplayField(
                value: a!richTextHeader(
                    text: if(a!isNullOrEmpty(local!date),
                    text(today(), "mmmm"),
                    text(date(index(local!calDate, 3), index(local!calDate, 1), index(local!calDate, 2) ), "mmmm")
                    ),
                    size: "LARGE"
                ),
                align: "CENTER"
                ),
                a!gridField(
                data: rule!GOA_GridCalendarGetMonthDetails(if(a!isNullOrEmpty(local!date),
                today(),
                date(index(local!calDate, 3), index(local!calDate, 1), index(local!calDate, 2))
            )  
                ),
                columns: {
                    a!gridColumn(
                    label: "Sunday",
                    value: fv!row.Sunday
                    ),
                    a!gridColumn(
                    label: "Monday",
                    value: fv!row.Monday
                    ),
                    a!gridColumn(
                    label: "Tuesday",
                    value: fv!row.Tuesday
                    ),
                    a!gridColumn(
                    label: "Wednesday",
                    value: fv!row.Wednesday
                    ), a!gridColumn(
                    label: "Thursday",
                    value: fv!row.Thursday
                    ),
                    a!gridColumn(
                    label: "Friday",
                    value: fv!row.Friday
                    ),
                    a!gridColumn(
                    label: "Saturday",
                    value: fv!row.Saturday
                    )
                },
                validations: {}
                )
            }
        )


---

### GOA_GetMonthDetails
- Expression Rule

        a!match(
            value: rule!GOA_GetFirstDayOfMonth(if(a!isNullOrEmpty(ri!date), today(), ri!date)),
            equals: "Sunday",
            then:rule!GOA_GridCalendarFirstDaySunday(ri!date),
            equals: "Monday",
            then:rule!GOA_GridCalendarFirstDayMonday(ri!date),
            equals: "Tuesday",
            then:rule!GOA_GridCalendarFirstDayTuesday(ri!date),
            equals: "Wednesday",
            then: rule!GOA_GridCalendarFirstDayWednesday(ri!date),
            equals: "Thursday",
            then:rule!GOA_GridCalendarFirstDayThursday(ri!date),
            equals: "Friday",
            then:rule!GOA_GridCalendarFirstDayFriday(ri!date),
            equals: "Saturday",
            then:rule!GOA_GridCalendarFirstDaySaturday(ri!date),
            default: rule!GOA_GridCalendarFirstDaySunday(ri!date),
        )


---

### GOA_GetFirstDayOfMonth
- Exprsssion Rule  

        text(
            date(year(ri!date, ), month(ri!date), 1),
            "dddd"
        )


---

### GOA_FirstDaySunday
**Accepts a date of a month that starts on Sunday and will return a list of 7 maps, each containing a day of the week and all the dates for that day and month use with expression rule GOA_GetMonthDetails to get correct results**
- Exprsssion Rule 

        a!match(
            value:daysinmonth(month( ri!date ), year(ri!date)),
            equals: 28,
            then: {
                a!map(Sunday: 1, Monday: 2, Tuesday: 3, Wednesday: 4, Thursday: 5, Friday: 6, Saturday: 7),
                a!map(Sunday: 8, Monday: 9, Tuesday: 10, Wednesday: 11, Thursday: 12, Friday: 13, Saturday: 14),
                a!map(Sunday: 15, Monday: 16, Tuesday: 17, Wednesday: 18, Thursday: 19, Friday: 20, Saturday: 21),
                a!map(Sunday: 22, Monday: 23, Tuesday: 24, Wednesday: 25, Thursday: 26, Friday: 27, Saturday: 28),
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: null),
                
            },
            equals: 29,
            then:  {
                a!map(Sunday: 1, Monday: 2, Tuesday: 3, Wednesday: 4, Thursday: 5, Friday: 6, Saturday: 7),
                a!map(Sunday: 8, Monday: 9, Tuesday: 10, Wednesday: 11, Thursday: 12, Friday: 13, Saturday: 14),
                a!map(Sunday: 15, Monday: 16, Tuesday: 17, Wednesday: 18, Thursday: 19, Friday: 20, Saturday: 21),
                a!map(Sunday: 22, Monday: 23, Tuesday: 24, Wednesday: 25, Thursday: 26, Friday: 27, Saturday: 28),
                a!map(Sunday: 29, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: null),
            },
            equals: 30,
            then: {
                a!map(Sunday: 1, Monday: 2, Tuesday: 3, Wednesday: 4, Thursday: 5, Friday: 6, Saturday: 7),
                a!map(Sunday: 8, Monday: 9, Tuesday: 10, Wednesday: 11, Thursday: 12, Friday: 13, Saturday: 14),
                a!map(Sunday: 15, Monday: 16, Tuesday: 17, Wednesday: 18, Thursday: 19, Friday: 20, Saturday: 21),
                a!map(Sunday: 22, Monday: 23, Tuesday: 24, Wednesday: 25, Thursday: 26, Friday: 27, Saturday: 28),
                a!map(Sunday: 26, Monday: 27, Tuesday: 28, Wednesday: 30, Thursday: null, Friday: null, Saturday: null),
            },
            default: {
                a!map(Sunday: 1, Monday: 2, Tuesday: 3, Wednesday: 4, Thursday: 5, Friday: 6, Saturday: 7),
                a!map(Sunday: 8, Monday: 9, Tuesday: 10, Wednesday: 11, Thursday: 12, Friday: 13, Saturday: 14),
                a!map(Sunday: 15, Monday: 16, Tuesday: 17, Wednesday: 18, Thursday: 19, Friday: 20, Saturday: 21),
                a!map(Sunday: 22, Monday: 23, Tuesday: 24, Wednesday: 25, Thursday: 26, Friday: 27, Saturday: 28),
                a!map(Sunday: 26, Monday: 27, Tuesday: 28, Wednesday: 30, Thursday: 31, Friday: null, Saturday: null),
            },
        )

---

### GOA_FirstDayMonday
**Accepts a date of a month that starts on Monday and will return a list of 7 maps, each containing a day of the week and all the dates for that day and month use with expression rule GOA_GetMonthDetails to get correct results**
- Exprsssion Rule 

        a!match(
            value:daysinmonth(month( ri!date ), year(ri!date)),
            equals: 28,
            then: {
                a!map(Sunday: null, Monday: 1, Tuesday: 2, Wednesday: 3, Thursday: 4, Friday: 5, Saturday: 6),
                a!map(Sunday: 7, Monday: 8, Tuesday: 9, Wednesday: 10, Thursday: 11, Friday: 12, Saturday: 13),
                a!map(Sunday: 14, Monday: 15, Tuesday: 16, Wednesday: 17, Thursday: 18, Friday: 19, Saturday: 20),
                a!map(Sunday: 21, Monday: 22, Tuesday: 23, Wednesday: 24, Thursday: 25, Friday: 26, Saturday: 27),
                a!map(Sunday: 28, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: null),
                
            },
            equals: 29,
            then:  {
                a!map(Sunday: null, Monday: 1, Tuesday: 2, Wednesday: 3, Thursday: 4, Friday: 5, Saturday: 6),
                a!map(Sunday: 7, Monday: 8, Tuesday: 9, Wednesday: 10, Thursday: 11, Friday: 12, Saturday: 13),
                a!map(Sunday: 14, Monday: 15, Tuesday: 16, Wednesday: 17, Thursday: 18, Friday: 19, Saturday: 20),
                a!map(Sunday: 21, Monday: 22, Tuesday: 23, Wednesday: 24, Thursday: 25, Friday: 26, Saturday: 27),
                a!map(Sunday: 28, Monday: 29, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: null),
            },
            equals: 30,
            then: {
                a!map(Sunday: null, Monday: 1, Tuesday: 2, Wednesday: 3, Thursday: 4, Friday: 5, Saturday: 6),
                a!map(Sunday: 7, Monday: 8, Tuesday: 9, Wednesday: 10, Thursday: 11, Friday: 12, Saturday: 13),
                a!map(Sunday: 14, Monday: 15, Tuesday: 16, Wednesday: 17, Thursday: 18, Friday: 19, Saturday: 20),
                a!map(Sunday: 21, Monday: 22, Tuesday: 23, Wednesday: 24, Thursday: 25, Friday: 26, Saturday: 27),
                a!map(Sunday: 28, Monday: 29, Tuesday: 30, Wednesday: null, Thursday: null, Friday: null, Saturday: null),
            },
            default: {
                a!map(Sunday: null, Monday: 1, Tuesday: 2, Wednesday: 3, Thursday: 4, Friday: 5, Saturday: 6),
                a!map(Sunday: 7, Monday: 8, Tuesday: 9, Wednesday: 10, Thursday: 11, Friday: 12, Saturday: 13),
                a!map(Sunday: 14, Monday: 15, Tuesday: 16, Wednesday: 17, Thursday: 18, Friday: 19, Saturday: 20),
                a!map(Sunday: 21, Monday: 22, Tuesday: 23, Wednesday: 24, Thursday: 25, Friday: 26, Saturday: 27),
                a!map(Sunday: 28, Monday: 29, Tuesday: 30, Wednesday: 31, Thursday: null, Friday: null, Saturday: null),
            },
        )


---

### GOA_FirstDayTuesday
**Accepts a date of a month that starts on Tuesday and will return a list of 7 maps, each containing a day of the week and all the dates for that day and month use with expression rule GOA_GetMonthDetails to get correct results**
- Exprsssion Rule

        a!match(
            value:daysinmonth(month( ri!date ), year(ri!date)),
            equals: 28,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: 1, Wednesday: 2, Thursday: 3, Friday: 4, Saturday: 5),
                a!map(Sunday: 6, Monday: 7, Tuesday: 8, Wednesday: 9, Thursday: 10, Friday: 11, Saturday: 12),
                a!map(Sunday: 13, Monday: 14, Tuesday: 15, Wednesday: 16, Thursday: 17, Friday: 18, Saturday: 19),
                a!map(Sunday: 20, Monday: 21, Tuesday: 22, Wednesday: 23, Thursday: 24, Friday: 25, Saturday: 26),
                a!map(Sunday: 27, Monday: 28, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: null)
                
            },
            equals: 29,
            then:  {
                a!map(Sunday: null, Monday: null, Tuesday: 1, Wednesday: 2, Thursday: 3, Friday: 4, Saturday: 5),
                a!map(Sunday: 6, Monday: 7, Tuesday: 8, Wednesday: 9, Thursday: 10, Friday: 11, Saturday: 12),
                a!map(Sunday: 13, Monday: 14, Tuesday: 15, Wednesday: 16, Thursday: 17, Friday: 18, Saturday: 19),
                a!map(Sunday: 20, Monday: 21, Tuesday: 22, Wednesday: 23, Thursday: 24, Friday: 25, Saturday: 26),
                a!map(Sunday: 27, Monday: 28, Tuesday: 29, Wednesday: null, Thursday: null, Friday: null, Saturday: null)
            },
            equals: 30,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: 1, Wednesday: 2, Thursday: 3, Friday: 4, Saturday: 5),
                a!map(Sunday: 6, Monday: 7, Tuesday: 8, Wednesday: 9, Thursday: 10, Friday: 11, Saturday: 12),
                a!map(Sunday: 13, Monday: 14, Tuesday: 15, Wednesday: 16, Thursday: 17, Friday: 18, Saturday: 19),
                a!map(Sunday: 20, Monday: 21, Tuesday: 22, Wednesday: 23, Thursday: 24, Friday: 25, Saturday: 26),
                a!map(Sunday: 27, Monday: 28, Tuesday: 29, Wednesday: 30, Thursday: null, Friday: null, Saturday: null)
            },
            default: {
                a!map(Sunday: null, Monday: null, Tuesday: 1, Wednesday: 2, Thursday: 3, Friday: 4, Saturday: 5),
                a!map(Sunday: 6, Monday: 7, Tuesday: 8, Wednesday: 9, Thursday: 10, Friday: 11, Saturday: 12),
                a!map(Sunday: 13, Monday: 14, Tuesday: 15, Wednesday: 16, Thursday: 17, Friday: 18, Saturday: 19),
                a!map(Sunday: 20, Monday: 21, Tuesday: 22, Wednesday: 23, Thursday: 24, Friday: 25, Saturday: 26),
                a!map(Sunday: 27, Monday: 28, Tuesday: 29, Wednesday: 30, Thursday: 31, Friday: null, Saturday: null)
            },
        )

---

### GOA_FirstDayWednesday
**Accepts a date of a month that starts on Wednesday and will return a list of 7 maps, each containing a day of the week and all the dates for that day and month use with expression rule GOA_GetMonthDetails to get correct results**
- Exprsssion Rule

        a!match(
            value:daysinmonth(month( ri!date ), year(ri!date)),
            equals: 28,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: 1, Thursday: 2, Friday: 3, Saturday: 4),
                a!map(Sunday: 5, Monday: 6, Tuesday: 7, Wednesday: 8, Thursday: 9, Friday: 10, Saturday: 11),
                a!map(Sunday: 12, Monday: 13, Tuesday: 14, Wednesday: 15, Thursday: 16, Friday: 17, Saturday: 18),
                a!map(Sunday: 19, Monday: 20, Tuesday: 21, Wednesday: 22, Thursday: 23, Friday: 24, Saturday: 25),
                a!map(Sunday: 26, Monday: 27, Tuesday: 28, Wednesday: null, Thursday: null, Friday: null, Saturday: null),
            },
            equals: 29,
            then:  {
                
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: 1, Thursday: 2, Friday: 3, Saturday: 4),
                a!map(Sunday: 5, Monday: 6, Tuesday: 7, Wednesday: 8, Thursday: 9, Friday: 10, Saturday: 11),
                a!map(Sunday: 12, Monday: 13, Tuesday: 14, Wednesday: 15, Thursday: 16, Friday: 17, Saturday: 18),
                a!map(Sunday: 19, Monday: 20, Tuesday: 21, Wednesday: 22, Thursday: 23, Friday: 24, Saturday: 25),
                a!map(Sunday: 26, Monday: 27, Tuesday: 28, Wednesday: 29, Thursday: null, Friday: null, Saturday: null),
            },
            equals: 30,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: 1, Thursday: 2, Friday: 3, Saturday: 4),
                a!map(Sunday: 5, Monday: 6, Tuesday: 7, Wednesday: 8, Thursday: 9, Friday: 10, Saturday: 11),
                a!map(Sunday: 12, Monday: 13, Tuesday: 14, Wednesday: 15, Thursday: 16, Friday: 17, Saturday: 18),
                a!map(Sunday: 19, Monday: 20, Tuesday: 21, Wednesday: 22, Thursday: 23, Friday: 24, Saturday: 25),
                a!map(Sunday: 26, Monday: 27, Tuesday: 28, Wednesday: 29, Thursday: 30, Friday: null, Saturday: null),
            },
            default: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: 1, Thursday: 2, Friday: 3, Saturday: 4),
                a!map(Sunday: 5, Monday: 6, Tuesday: 7, Wednesday: 8, Thursday: 9, Friday: 10, Saturday: 11),
                a!map(Sunday: 12, Monday: 13, Tuesday: 14, Wednesday: 15, Thursday: 16, Friday: 17, Saturday: 18),
                a!map(Sunday: 19, Monday: 20, Tuesday: 21, Wednesday: 22, Thursday: 23, Friday: 24, Saturday: 25),
                a!map(Sunday: 26, Monday: 27, Tuesday: 28, Wednesday: 29, Thursday: 30, Friday: 31, Saturday: null),
            },
        )

---

### GOA_FirstDayThursday
**Accepts a date of a month that starts on Thursday and will return a list of 7 maps, each containing a day of the week and all the dates for that day and month use with expression rule GOA_GetMonthDetails to get correct results**
- Exprsssion Rule

        a!match(
            value:daysinmonth(month( ri!date ), year(ri!date)),
            equals: 28,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: 1, Friday: 2, Saturday: 3),
                a!map(Sunday: 4, Monday: 5, Tuesday: 6, Wednesday: 7, Thursday: 8, Friday: 9, Saturday: 10),
                a!map(Sunday: 11, Monday: 12, Tuesday: 13, Wednesday: 14, Thursday: 15, Friday: 16, Saturday: 17),
                a!map(Sunday: 18, Monday: 19, Tuesday: 20, Wednesday: 21, Thursday: 22, Friday: 23, Saturday: 24),
                a!map(Sunday: 25, Monday: 26, Tuesday: 27, Wednesday: 28, Thursday: null, Friday: null, Saturday: null)
            },
            equals: 29,
            then:  {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: 1, Friday: 2, Saturday: 3),
                a!map(Sunday: 4, Monday: 5, Tuesday: 6, Wednesday: 7, Thursday: 8, Friday: 9, Saturday: 10),
                a!map(Sunday: 11, Monday: 12, Tuesday: 13, Wednesday: 14, Thursday: 15, Friday: 16, Saturday: 17),
                a!map(Sunday: 18, Monday: 19, Tuesday: 20, Wednesday: 21, Thursday: 22, Friday: 23, Saturday: 24),
                a!map(Sunday: 25, Monday: 26, Tuesday: 27, Wednesday: 28, Thursday: 29, Friday: null, Saturday: null)
            },
            equals: 30,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: 1, Friday: 2, Saturday: 3),
                a!map(Sunday: 4, Monday: 5, Tuesday: 6, Wednesday: 7, Thursday: 8, Friday: 9, Saturday: 10),
                a!map(Sunday: 11, Monday: 12, Tuesday: 13, Wednesday: 14, Thursday: 15, Friday: 16, Saturday: 17),
                a!map(Sunday: 18, Monday: 19, Tuesday: 20, Wednesday: 21, Thursday: 22, Friday: 23, Saturday: 24),
                a!map(Sunday: 25, Monday: 26, Tuesday: 27, Wednesday: 28, Thursday: 29, Friday: 30, Saturday: null)
            },
            default: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: 1, Friday: 2, Saturday: 3),
                a!map(Sunday: 4, Monday: 5, Tuesday: 6, Wednesday: 7, Thursday: 8, Friday: 9, Saturday: 10),
                a!map(Sunday: 11, Monday: 12, Tuesday: 13, Wednesday: 14, Thursday: 15, Friday: 16, Saturday: 17),
                a!map(Sunday: 18, Monday: 19, Tuesday: 20, Wednesday: 21, Thursday: 22, Friday: 23, Saturday: 24),
                a!map(Sunday: 25, Monday: 26, Tuesday: 27, Wednesday: 28, Thursday: 29, Friday: 30, Saturday: 31)
            },
        )

---

### GOA_FirstDayFriday
**Accepts a date of a month that starts on Friday and will return a list of 7 maps, each containing a day of the week and all the dates for that day and month use with expression rule GOA_GetMonthDetails to get correct results**
- Exprsssion Rule

        a!match(
            value:daysinmonth(month( ri!date ), year(ri!date)),
            equals: 28,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: 1, Saturday: 2),
                a!map(Sunday: 3, Monday: 4, Tuesday: 5, Wednesday: 6, Thursday: 7, Friday: 8, Saturday: 9),
                a!map(Sunday: 10, Monday: 11, Tuesday: 12, Wednesday: 13, Thursday: 14, Friday: 15, Saturday: 16),
                a!map(Sunday: 17, Monday: 18, Tuesday: 19, Wednesday: 20, Thursday: 21, Friday: 22, Saturday: 23),
                a!map(Sunday: 24, Monday: 25, Tuesday: 26, Wednesday: 27, Thursday: 28, Friday: null, Saturday: null)
            },
            equals: 29,
            then:  {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: 1, Saturday: 2),
                a!map(Sunday: 3, Monday: 4, Tuesday: 5, Wednesday: 6, Thursday: 7, Friday: 8, Saturday: 9),
                a!map(Sunday: 10, Monday: 11, Tuesday: 12, Wednesday: 13, Thursday: 14, Friday: 15, Saturday: 16),
                a!map(Sunday: 17, Monday: 18, Tuesday: 19, Wednesday: 20, Thursday: 21, Friday: 22, Saturday: 23),
                a!map(Sunday: 24, Monday: 25, Tuesday: 26, Wednesday: 27, Thursday: 28, Friday: 29, Saturday: null)
            },
            equals: 30,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: 1, Saturday: 2),
                a!map(Sunday: 3, Monday: 4, Tuesday: 5, Wednesday: 6, Thursday: 7, Friday: 8, Saturday: 9),
                a!map(Sunday: 10, Monday: 11, Tuesday: 12, Wednesday: 13, Thursday: 14, Friday: 15, Saturday: 16),
                a!map(Sunday: 17, Monday: 18, Tuesday: 19, Wednesday: 20, Thursday: 21, Friday: 22, Saturday: 23),
                a!map(Sunday: 24, Monday: 25, Tuesday: 26, Wednesday: 27, Thursday: 28, Friday: 29, Saturday: 30)
            },
            default: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: 1, Saturday: 2),
                a!map(Sunday: 3, Monday: 4, Tuesday: 5, Wednesday: 6, Thursday: 7, Friday: 8, Saturday: 9),
                a!map(Sunday: 10, Monday: 11, Tuesday: 12, Wednesday: 13, Thursday: 14, Friday: 15, Saturday: 16),
                a!map(Sunday: 17, Monday: 18, Tuesday: 19, Wednesday: 20, Thursday: 21, Friday: 22, Saturday: 23),
                a!map(Sunday: 24, Monday: 25, Tuesday: 26, Wednesday: 27, Thursday: 28, Friday: 29, Saturday: 30),
                a!map(Sunday: 31, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday:null),
            },
        )

---

### GOA_FirstDaySaturday
**Accepts a date of a month that starts on Saturday and will return a list of 7 maps, each containing a day of the week and all the dates for that day and month use with expression rule GOA_GetMonthDetails to get correct results**
- Exprsssion Rule

        a!match(
            value:daysinmonth(month( ri!date ), year(ri!date)),
            equals: 28,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: 1),
                a!map(Sunday: 2, Monday: 3, Tuesday: 4, Wednesday: 5, Thursday: 6, Friday: 7, Saturday: 8),
                a!map(Sunday: 9, Monday: 10, Tuesday: 11, Wednesday: 12, Thursday: 13, Friday: 14, Saturday: 15),
                a!map(Sunday: 16, Monday: 17, Tuesday: 18, Wednesday: 19, Thursday: 20, Friday: 21, Saturday: 22),
                a!map(Sunday: 23, Monday: 24, Tuesday: 25, Wednesday: 26, Thursday: 27, Friday: 28, Saturday: null)
            },
            equals: 29,
            then:  {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: 1),
                a!map(Sunday: 2, Monday: 3, Tuesday: 4, Wednesday: 5, Thursday: 6, Friday: 7, Saturday: 8),
                a!map(Sunday: 9, Monday: 10, Tuesday: 11, Wednesday: 12, Thursday: 13, Friday: 14, Saturday: 15),
                a!map(Sunday: 16, Monday: 17, Tuesday: 18, Wednesday: 19, Thursday: 20, Friday: 21, Saturday: 22),
                a!map(Sunday: 23, Monday: 24, Tuesday: 25, Wednesday: 26, Thursday: 27, Friday: 28, Saturday: 29)
            },
            equals: 30,
            then: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: 1),
                a!map(Sunday: 2, Monday: 3, Tuesday: 4, Wednesday: 5, Thursday: 6, Friday: 7, Saturday: 8),
                a!map(Sunday: 9, Monday: 10, Tuesday: 11, Wednesday: 12, Thursday: 13, Friday: 14, Saturday: 15),
                a!map(Sunday: 16, Monday: 17, Tuesday: 18, Wednesday: 19, Thursday: 20, Friday: 21, Saturday: 22),
                a!map(Sunday: 23, Monday: 24, Tuesday: 25, Wednesday: 26, Thursday: 27, Friday: 28, Saturday: 29),
                a!map(Sunday: 30, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: null),
            },
            default: {
                a!map(Sunday: null, Monday: null, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: 1),
                a!map(Sunday: 2, Monday: 3, Tuesday: 4, Wednesday: 5, Thursday: 6, Friday: 7, Saturday: 8),
                a!map(Sunday: 9, Monday: 10, Tuesday: 11, Wednesday: 12, Thursday: 13, Friday: 14, Saturday: 15),
                a!map(Sunday: 16, Monday: 17, Tuesday: 18, Wednesday: 19, Thursday: 20, Friday: 21, Saturday: 22),
                a!map(Sunday: 23, Monday: 24, Tuesday: 25, Wednesday: 26, Thursday: 27, Friday: 28, Saturday: 29),
                a!map(Sunday: 30, Monday: 31, Tuesday: null, Wednesday: null, Thursday: null, Friday: null, Saturday: null),
            },
        )

---