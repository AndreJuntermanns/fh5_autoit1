#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#include <Process.au3>
;Forza script zum Skill Points aufladen
;Local $sName = _ProcessGetName(15724)
 Local $hWnd = WinGetHandle("[CLASS:App]")

; Double click at the x, y position of 0, 500. This is a better approach as it takes into account left/right handed users.


   Local $iLoop =1
   While $iLoop < 111

	  ;ControlSend($hWnd,"","","{ENTER}")
	  MouseClick($MOUSE_CLICK_PRIMARY, 300, 300, 2)
      Sleep(1500)
	  $begin = TimerInit ()
       While 1
           $dif = TimerDiff ($begin)
			 ControlSend($hWnd,"","","{w down}")
           if $dif > 31500 then exitloop
        WEnd


;	  While $fDiff <= (32000)
;		 Local $fDiff = TimerDiff($hTimer)
;		 ;Send("{w down}") ;Holds the W key down
;		 ControlSend($hWnd,"","","{w down}")
;		  ControlSend($hWnd,"","","{w up}")
;	  WEnd

		   ;Send("{w up}") ;Releases the W key
		   ControlSend($hWnd,"","","{w up}")
		   Sleep (15000)

		   MouseClick($MOUSE_CLICK_PRIMARY, 322, 1002, 2)
		   Sleep(1000)
		   ControlSend($hWnd,"","","{x}")
		   ;Send("{x}")
		   Sleep (2500)
		   ;Send("{ENTER}")

		   MouseClick($MOUSE_CLICK_PRIMARY, 958, 607, 2)
		   Sleep(1000)
		   ControlSend($hWnd,"","","{ENTER}")
		   Sleep (5000)
		 $iLoop = $iLoop+1

	WEnd







