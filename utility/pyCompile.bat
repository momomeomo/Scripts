
:start

set id=
set /p id=".py compile file name: "
call pyinstaller -F -w %id%.py

set choice=
set /p choice="Completed"