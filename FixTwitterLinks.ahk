; WORK IN PROGRESS

; regex for twitter urls : ^(?:https:\/\/)(?:x\.com\/|twitter\.com\/).*(?:\/status\/)\d*$

OnClipboardChange modify_twitter_link

modify_twitter_link(DataType) {
    original_copied_link := A_Clipboard
    if (RegExMatch(original_copied_link, "^(?:https:\/\/)(?:x\.com\/|twitter\.com\/).*(?:\/status\/)\d*$") == 1) {
        ToolTip "Found twitter link!"
        Sleep 1000
    } else {
        ToolTip "Not a twitter link :("
        Sleep 1000
    }
    ToolTip original_copied_link
    Sleep 1000
    ToolTip 
    
}