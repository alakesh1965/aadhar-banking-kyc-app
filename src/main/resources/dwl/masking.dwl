%dw 2.0
output application/json
 
var aadhaar = payload.AadhaarNo replace " " with ""
 
---
{
    Name: upper(payload.Name),
    Gender: upper(payload.Gender),
    DOB: (payload.DOB as Date {format: "dd-MM-yyyy"}) as Date {format: "yyyy-MM-dd"},
    AadhaarNo: "XXXX-XXXX-" ++ (aadhaar[-4 to -1])
}