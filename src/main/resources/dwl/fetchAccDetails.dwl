output application/json
---
{
  AccountId: vars.DB_Account_id,
  customer_name: vars.maskingPayload.Name,
  document_ref: vars.document_ref,
  Mobile_Number: vars.DB_Mobile_Number,
  status: "KYC In-Progress"  
}