%dw 2.0
output application/json
import toBase64 from dw::core::Binaries
---
{
	fileBase64: toBase64(vars.fileContent)
}
