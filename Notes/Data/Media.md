## Videos
- when stored as documents you can use the videoField, and provide a document as the source
    - documentId: constant for the document, or document ID
      - you can use a record type field that has a number data type as document ID
    - property: "url"
```
a!videoField(
    label: "Video",
    labelPosition: "ABOVE",
    videos: {
      a!webVideo(
          source: document(cons!TTA_RPREPLAY_FINAL1660287447, "url")
      ), 
      a!webVideo(
          source: document(4589, "url")
      ),
      a!webVideo(
                    source: document(ri!record[recordType!ATF Video.video2], "url")
       )
    }
  )
```