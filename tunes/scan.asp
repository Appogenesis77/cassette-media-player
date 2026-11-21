<%@ Language="VBScript" %>
<% Option Explicit %>
<%
Response.ContentType = "application/json"
Response.Charset = "utf-8"
Response.CacheControl = "no-cache"

Dim fso, folder, item, names, ext, jsonText, name, first
On Error Resume Next
Set fso = Server.CreateObject("Scripting.FileSystemObject")
If Err.Number <> 0 Then
  Response.Status = "500 Internal Server Error"
  Response.Write "[]"
  Response.End
End If
Set folder = fso.GetFolder(Server.MapPath("."))
If Err.Number <> 0 Then
  Response.Status = "500 Internal Server Error"
  Response.Write "[]"
  Response.End
End If
On Error GoTo 0

jsonText = "["
first = True
For Each item In folder.Files
  ext = LCase(fso.GetExtensionName(item.Name))
  If ext = "mp3" Or ext = "wav" Or ext = "m4a" Or ext = "ogg" Then
    name = item.Name
    ' Escape JSON punctuation and control characters before sending names.
    name = Replace(name, "\", "\\")
    name = Replace(name, Chr(34), "\" & Chr(34))
    name = Replace(name, vbCr, "\r")
    name = Replace(name, vbLf, "\n")
    name = Replace(name, vbTab, "\t")
    If Not first Then jsonText = jsonText & ","
    jsonText = jsonText & Chr(34) & name & Chr(34)
    first = False
  End If
Next
jsonText = jsonText & "]"
Response.Write jsonText
Set folder = Nothing
Set fso = Nothing
%>