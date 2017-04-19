Global $g_FlaskHotkeys[5] = ["1", "2", "3", "4", "5"]

Func flaskPressed()
   Static $currentFlask = 1

   Local $hotkey = $g_FlaskHotkeys[$currentFlask - 1]

   HotKeySet($hotkey)
   Send($hotkey)
   HotKeySet($hotkey, "flaskPressed")

   $currentFlask += 1
   If $currentFlask > 5 Then $currentFlask = 1
   Sleep(1)
EndFunc

For $hotkey In $g_FlaskHotkeys
   HotKeySet($hotkey, "flaskPressed")
Next

While 1
    Sleep(10)
WEnd
