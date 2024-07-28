; This script launches Voidtools Everything and raises it when Windows + Space is pressed
#Space::{
    Run "C:\Program Files\Everything\Everything.exe"
    WinWait "Everything"
    WinActivate "Everything"
}