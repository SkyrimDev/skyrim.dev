; [BEGIN Header]
scriptName Whatever extends Form
{
    I am a multiline
    comment
}
; [END Header]

; [BEGIN OnInit]
; Hello from a comment
event OnInit()
    {
        multiline
        comment
    }
    ; [BEGIN smallSnippet]
    string something = "Wassup?"
    Debug.MessageBox(something)
    ; [END smallSnippet]
    ; more comments
endEvent
; [END OnInit]
