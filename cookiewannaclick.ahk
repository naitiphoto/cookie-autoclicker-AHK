pause on

#Persistent
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

MouseGetPos, StartX, StartY


loop
{
    Click
    PixelSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xd4bc73, 0, Fast RGB
    if ( ErrorLevel = 0 )
    {
        MouseGetPos, OriginalX, OriginalY
        
        MouseMove, FoundX, FoundY, 0
        Click
        Sleep, 0.001
        MouseMove, OriginalX, OriginalY, 0
    }
}

f::Pause