%dw 2.0
output multipart/form-data
var b64 = (payload default "") as String
---
{
  parts: {
    base64Image: { content: "data:image/png;base64," ++ b64 },
    language:    { content: "eng" },
    OCREngine:   { content: "2" }
  }
}