-- http://projects.haskell.org/xmobar/

Config { 
    font = "xft:UbuntuMono Nerd Font:weight=bold:pixelsize=16:antialias=true:hinting=true",
    bgColor = "#292d3e",
    fgColor = "#f07178",
    lowerOnStart = True,
    hideOnStart = False,
    allDesktops = True,
    persistent = True,
    commands = [ 
        Run Date "  %a %d %b %Y %H:%M " "date" 600,
        Run Network "wlp3s0" ["-t", " <rx>kb  <tx>kb"] 150,
        Run Cpu ["-t", " (<total>%)","-H","50","--high","red"] 150,
        Run Memory ["-t", "  <used>M (<usedratio>%)"] 150,
        Run Com "volume" [] "volume" 10,
        Run Com "bash" ["-c", "cat /sys/class/thermal/thermal_zone0/temp | cut -c1-2"] "cpu-temp" 150,
        Run Com "battery" [] "battery" 600,
        Run UnsafeStdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "<fc=#b303ff>  </fc> %UnsafeStdinReader% }{ \
        \<fc=#e1acff>%cpu-temp%糖 </fc>\
        \<fc=#c3e88d> %battery%</fc>\
        \<fc=#FFB86C> %cpu% </fc>\
        \<fc=#FF5555> %memory% </fc>\
        \<fc=#c3e88d> %wlp3s0%0</fc>\
        \<fc=#82AAFF> %volume% </fc>\
        \<fc=#8BE9FD> %date% </fc>"
}
