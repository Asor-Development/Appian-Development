# Load Sample Data
- Create your record type 
        
        a!localVariables(
        /* The data to load into the record data source. */
        /*After data has been published to your database, the button text changes to DATA ALREADY PUBLISHED. */
        /*The button will stay disabled as long as there is employee data present in the database table.*/

        /*Change this data to match your record type*/
        local!dataToLoad: a!forEach(
            {
            a!map( firstName: "John" , lastName: "Smith" , department: "Engineering" , title: "Director" , phoneNumber: "555-123-4567" , startDate: today()-360 ),
            a!map( firstName: "Michael" , lastName: "Johnson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-360 ),
            a!map( firstName: "Mary", lastName: "Reed" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 ),
            a!map( firstName: "Angela" , lastName: "Cooper" , department: "Sales" , title: "Manager" , phoneNumber: "555-123-4567" , startDate: today()-240 ),
            a!map( firstName: "Elizabeth" , lastName: "Ward" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-240 ),
            a!map( firstName: "Daniel", lastName: "Lewis" , department: "HR" , title: "Manager" , phoneNumber: "555-876-5432" , startDate: today()-180 ),
            a!map( firstName: "Paul" , lastName: "Martin" , department: "Finance" , title: "Analyst" , phoneNumber: "555-609-3691" , startDate: today()-150 ),
            a!map( firstName: "Jessica" , lastName: "Peterson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-150 ),
            a!map( firstName: "Mark" , lastName: "Hall" , department: "Professional Services" , title: "Director" , phoneNumber: "555-012-3456" , startDate: today()-150 ),
            a!map( firstName: "Rebecca" , lastName: "Wood" , department: "Engineering" , title: "Manager" , phoneNumber: "555-210-3456" , startDate: today()-150 ),
            a!map( firstName: "Pamela" , lastName: "Sanders" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate:today()-120 ),
            a!map( firstName: "Christopher" , lastName: "Morris" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-456-7890" , startDate: today()-120 ),
            a!map( firstName: "Kevin" , lastName: "Stewart" , department: "Professional Services" , title: "Manager" , phoneNumber: "555-345-6789" , startDate: today()-120 ),
            a!map( firstName: "Stephen" , lastName: "Edwards" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-765-4321" , startDate: today()-120 ),
            a!map( firstName: "Janet", lastName:"Coleman" , department: "Finance" , title: "Director" , phoneNumber: "555-654-3210" , startDate: today()-90 ),
            a!map( firstName: "Scott" , lastName: "Bailey" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-678-1235" , startDate: today()-30 ),
            a!map( firstName: "Andrew" , lastName: "Nelson" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-789-4560" , startDate: today()-30 ),
            a!map( firstName: "Michelle" , lastName: "Foster" , department: "HR" , title: "Director" , phoneNumber: "555-345-6789" , startDate: today()-30 ),
            a!map( firstName: "Laura" , lastName:"Bryant" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-14 ),
            a!map( firstName: "William" , lastName: "Ross" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate: today()-10 ),
            a!map( firstName: "Arya" , lastName:"Colson" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-927-3343" , startDate: today()-5 )

            },
            /*update the expression to work with your application:*/
            cast(
            'recordType!{2d5d8df7-d4d0-41e1-9834-4ead432133bc}AT Employee',
            fv!item
            )
        ),
        /* This value gets updated when the user clicks on the PUBLISH DATA button in order to disable it
            so the user can't click it multiple times. */
        local!submitted: false,
        /* The refresh variable watches local!submitted and reruns the query when it changes. */
        local!records: a!refreshVariable(
            value: a!queryRecordType(
            /*update the expression to work with your application:*/
            recordType: 'recordType!{2d5d8df7-d4d0-41e1-9834-4ead432133bc}AT Employee',
            pagingInfo: 
            a!pagingInfo(
                startIndex: 1,
                batchSize: 1000,
                sort: a!sortInfo(
                /*update the expression to work with your application:*/
                field: 'recordType!{2d5d8df7-d4d0-41e1-9834-4ead432133bc}AT Employee.fields.{60bed30d-b458-4ab1-92ea-f4fece17f26e}id',
                ascending: true
                )
            ),
            fetchTotalCount: true
            ),
            refreshOnVarChange: local!submitted
        ),
        local!hasData: not(local!records.totalCount=0),
        a!sectionLayout(
            contents: {
            a!buttonLayout(
                secondaryButtons:{
                a!buttonWidget(
                    label: if(local!hasData, "Data Already Published", "Publish Data"),
                    saveInto: {
                    a!writeRecords(
                        records: local!dataToLoad,
                        onSuccess: a!save(local!submitted, true)
                    )
                    },
                    submit: true,
                    style: "SOLID",
                    disabled: or(local!hasData, local!submitted)
                )
                }
            )
            }
        )
        )