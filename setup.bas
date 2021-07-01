Rem setup.exe Updated January 31 2021 at 12:01 AM
Rem
Rem

_FullScreen
start:
Cls
Print
Print "Lotto Max Lottery Simulator RC14 Version 2021 "
Print "Program Parameters Setup File"
Print "Released on January 31 2021 at 12:01 AM "
Print "Written By Russ Campbell of Kitchener, Ontario, Canada"
Print "------------------------------------------------------"
Print
Input "Do want colour screens [default Yes]       : ", cs$
If cs$ = "y" Then
    cs$ = "Y"
ElseIf cs$ = "n" Then
    cs$ = "N"
End If
If cs$ = "" Then
    cs$ = "Y"
End If
Input "Do you have a printer online and do you want to use it [default NO]  : ", printer$
If printer$ = "y" Then
    printer$ = "Y"
ElseIf printer$ = "n" Then
    printer$ = "N"
End If
If printer$ = "" Then
    printer$ = "N"
End If
Input "Do you wish to display text from draws on the screen -- [default [Y]  : ", answer$
If answer$ = "N" Or answer$ = "n" Then
    display$ = "N"
Else
    display$ = "Y"
End If
Input "Which speed do you wish to display [R]eadable or  [F]ast [default [R] : ", answer$
If answer$ = "F" Or answer$ = "f" Then
    speed$ = "Fast"
Else
    speed$ = "Readable"
End If

Cls
Print
Print "Graphics Mode For Lotto Max"
Print
Print "[A]  -  No Graphics Card"
Print "[B]  -  VGA Mode"
Print "[C]  -  HDMI Mode"
Print
Print "[Return] defaults to HDMI Mode ..."
Print
Input "Enter [A B C] : ", answer$
If answer$ = "a" Or answer$ = "A" Then
    stype = 0
    stype$ = "None"
ElseIf answer$ = "b" Or answer$ = "B" Then
    stype = 1
    stype$ = "VGA"
ElseIf answer$ = "c" Or answer$ = "C" Then
    stype = 2
    stype$ = "HDMI"
ElseIf answer$ = "" Then
    stype = 2
    stype$ = "HDMI"
End If
qqqq:

Print
Input "How many Numbers in the Wheeling System [14 to 42] [defaults to 14] : ", qqq
If qqq < 14 Or qqq > 42 Then
    qqq = 14
End If
Print
Cls
Print
Print "Challenge Levels of Lotto Max RC14 Lottery Simulator"
Print
Print " [1]  Easy Skill Game         - You start with $1,000,000 dollars."
Print " [2]  Medium Skill Game       - You start with $750,000 dollars."
Print " [3]  Hard Skill Game         - You start with $500,000 dollars."
Print " [4]  Challenge Skill         - You start with $250,000 Dollars."
Print " [5]  Impossible Game         - You start with $125,000 Dollars."
Print " [6]  Totally Impossible Game - You start with $1000 dollars."
Print
Input " Skill Level [Enter defaults to easy with $1,000,000 ] : ", skill
If skill = 1 Then money = 1000000: skill$ = "Easy"
If skill = 2 Then money = 750000: skill$ = "Medium"
If skill = 3 Then money = 500000: skill$ = "Hard"
If skill = 4 Then money = 250000: skill$ = "Challencge"
If skill = 5 Then money = 125000: skill$ = "Impossible"
If skill = 6 Then money = 1000: skill$ = "Totally Impossible"
If skill = 0 Then money = 1000000: skill$ = "Easy"
Print
Input "[R]eal time Mode or [F]un Mode ", answer$
If answer$ = "R" Or answer$ = "r" Then
    realtime$ = "Realtime"
Else

    realtime$ = "Fun"
End If
Cls
Print
Print "Lotto Max RC14 Lottery Simulator System Configuration"
Print
Print "Printer  Online                               :  "; printer$
Print "Color Screens                                 :  "; cs$
Print "Graphics Mode                                 :  "; stype$
Print "Wheeling System                               :  "; qqq; " Numbers"
Print "Starting Money                                :  "; "$"; money; "Dollars."
Print "Skill Level                                   :  "; skill$
Print "Display text output on screen                 :  "; display$
Print "Display Speed [R]eadable or [F]ast            :  "; speed$
Print "Realtime or for Fun                           :  "; realtime$
Print
Input "Is the above correct [Y]es or [N]o : ", answer$
If answer$ = "n" Or answer$ = "N" Or answer$ = "no" Or answer$ = "NO" Then
    GoTo start
End If


Open "grmode.dat" For Output As #1
Print #1, printer$
Print #1, cs$
Print #1, stype
Print #1, qqq
Print #1, skill$
Print #1, display$
Print #1, money
Print #1, speed$
Print #1, realtime$
Close #1
money:
Open "totalbalance.dat" For Output As #1
totalbalance = money
Print #1, totalbalance
Close #1
Open "oldbalance.dat" For Output As #1
oldbalance = 0
Print #1, oldbalance
Close #1
Open "cash3total.dat" For Output As #1
cash3total = 0
Print #1, cash3total
Close #1
chainit:
Chain "lotto_max_RC14_simulator_final"
finish:
End

