%dw 2.0
output application/json

var text = payload.ParsedResults[0].ParsedText splitBy "\n"

---
{
    Name: text[1],
    Gender: text[2],
    DOB: text[3],
    AadhaarNo: text[4]   
}