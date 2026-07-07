%dw 2.0
output application/json
---
{
	Customer_Name        : payload.customer_name,
	Account_Details:{
		Account_ID       : payload.AccountId,
		Mobile_Number    : payload.Mobile_Number,
		Current_Status   : payload.status,
		Notification     : payload.Notification,
		Document_Ref     : (payload.document_ref default "Not Available")
	}
}