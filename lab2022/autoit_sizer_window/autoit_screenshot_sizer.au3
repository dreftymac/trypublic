;;@ <beg-file_info>
;;@ document_metadata:
;;@   - caption: "autoit_screenshot_sizer"
;;@     dmid:   "uu603screenshot1670835116"
;;@     vim:    tw=180:
;;@     date: created="2022-12-12 00:51:56"
;;@     last: lastmod="2022-12-12 02:24:10"
;;@     tags:   windows,addon,annoyancebuster,screenshot
;;@     namespace:
;;@         - nams: autoit/window
;;@     desc: |
;;@         ## Overview
;;@         * autoit_screenshot_sizer
;;@         * create transparent window for constraining windows snipping tool
;;@
;;@         ## Instructions
;;@         * open the image or app you want to screenshot
;;@         * set the default SizerWindow width and height (infra://uu182windowsize)
;;@         * run this autoit script to make the SizerWindow visible
;;@         * make sure the SizerWindow covers the desired portion of the screen
;;@             * NOTE: you can move the window without resizing it by using `alt+space -> move`
;;@         * run windows snipping tool and choose "window snip"
;;@             * NOTE: this will constrain the screenshot size
;;@         * take the snippet and save it to a local file
;;@         * repeat for every screenshot you want to take
;;@
;;@     seealso: |
;;@         * capt="stacko_question" ;; href="https://superuser.com/questions/803041/windows-snipping-tool-default-screen-selection" ;; tags="__tags01__" ;; id="dmid://uu500gotte1670838x03xlink"
;;@         * capt="answers.msft snip-a-uniform-size" ;; href="https://answers.microsoft.com/en-us/windows/forum/all/how-do-i-snip-a-uniform-size-using-snipping-tool/b455c111-1be3-43fc-9a09-184679c9790c" ;; tags="__tags01__" ;; id="dmid://uu115banis1670838x03xlink"
;;@         * capt="au docs" ;; href="https://www.autoitscript.com/autoit3/docs/appendix/GUIStyles.htm" ;; tags="__tags01__" ;; id="dmid://uu267parro1670835x03xlink"
;;@         * capt="original workup dir (blank.asc)" ;; href="C:/sm/docs/mytrybits/a/tryautoit/lab2017/window/copybits-003aa/blank.asc" ;; tags="__tags01__" ;; id="dmid://uu005rebuf1670837x03xlink"
;;@     seeinstead: |
;;@         * __seeinstead__
;;@ <end-file_info>

;; -------------------------------------------------------------------
;; begin_ init

;;@ <xrbeg id="uu135poppe1670836"     d="autoit.init">;;@
  #include <WindowsConstants.au3>
  #include <GUIConstantsEx.au3>
  #include <IE.au3>
  #include <WinAPI.au3>
  ;;pass
;;@ <xrend> "" uu135poppe1670836

;; -------------------------------------------------------------------
;; begin_ init vars

;;@ <xrbeg id="uu132porte1670836"     d="vars.init">;;@
  $ii4545winhigh  = 646     ;; id="dmid://uu182windowsize1670837"
  $ii4545winwide  = 648     ;;
  ;;pass
  Local $AlphaKey = 1 ;; the transparent color of your choice
  ;;pass
  $vx7248topstyle = BitOR($WS_POPUPWINDOW,$WS_SIZEBOX)  ;; minimal for taking screenshots
  $vx7248exostyle = ($WS_EX_LAYERED)                    ;; allows for transparency layer
  ;;pass
;;@ <xrend> "" uu132porte1670836

;; -------------------------------------------------------------------
;; begin_ init window

;;@ <xrbeg id="uu375kenne1670836"     d="window.activate">;;@
  $hMain = GUICreate("TransparentScreenshotWindow",$ii4545winwide,$ii4545winhigh,-1,-1,$vx7248topstyle,$vx7248exostyle)
  GUISetBkColor($AlphaKey, $hMain)
  _WinAPI_SetLayeredWindowAttributes($hMain, $AlphaKey, 0, $LWA_COLORKEY)
  GUISetState()
  ;;pass
;;@ <xrend> "" uu375kenne1670836

;; -------------------------------------------------------------------
;; begin_ window.show

;;@ <xrbeg id="uu713recou1670836"     d="gui.eventloop">;;@
  While 1
    $msg = GUIGetMsg()
    Switch $msg
      Case $GUI_EVENT_CLOSE
          Exit
    EndSwitch
  WEnd
;;@ <xrend> "" uu713recou1670836

;; -------------------------------------------------------------------
;; begin_ endfile

