; regex for twitter urls : ^https:\/\/(?:x\.com\/|twitter\.com\/).{1,16}\/status\/\d{1,20}$

OnClipboardChange modify_twitter_link

modify_twitter_link(DataType) {
    original_copied_link := A_Clipboard
    if (RegExMatch(original_copied_link, "^https:\/\/(?:x\.com\/|twitter\.com\/).{1,16}\/status\/\d{1,20}$") == 1) {
        if (RegExMatch(original_copied_link, "^https:\/\/twitter\.com\/.{1,16}\/status\/\d{1,20}$") == 1) {
            fixed_twitter_link := RegExReplace(original_copied_link, "twitter\.com", "fxtwitter.com",, 1)
            ToolTip "Fixed twitter URL: " fixed_twitter_link
            A_Clipboard := fixed_twitter_link
        } else if (RegExMatch(original_copied_link, "^https:\/\/x\.com\/.{1,16}\/status\/\d{1,20}$") == 1) {
            fixed_twitter_link := RegExReplace(original_copied_link, "x\.com", "fixupx.com",, 1)
            ToolTip "Fixed twitter URL: " fixed_twitter_link
            A_Clipboard := fixed_twitter_link
        }
        Sleep 1000
    }
    ToolTip 
    
}