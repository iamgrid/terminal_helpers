:: WARNING: ALWAYS OPEN THIS FILE WITH DOS (CP437) ENCODING
@ECHO OFF
::CLS

:MENU
ECHO.
ECHO [0mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO ³[92m        CXA frequently used folders - [7m jc.bat [0m       ³
ECHO [0mÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
ECHO.
ECHO              [96m 42 [97m   042 Root
ECHO              [96m 42r [97m  042 React App
ECHO              [96m 42s [97m  042 Host Suitelet
ECHO.
ECHO              [96m 46 [97m   046 Root
ECHO              [96m 46t [97m  046 Types
ECHO.
ECHO              [96m 25 [97m   025 Root
ECHO              [96m 25a [97m  025 Admin Center
ECHO              [96m 25c [97m  025 Client
ECHO.
ECHO              [96m mp [97m   Run 'more package.json'
ECHO              [96m tscp [97m Type check entire project
ECHO.
ECHO              [96m q/x  [97m EXIT[0m
ECHO.
ECHO ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

SET /P M=?? Type a shorthand then press ENTER: 
SET shorthands=42 42r 42s 46 46t 25 25a 25c mp tscp q x
FOR %%G IN (%shorthands%) DO (
            IF /I "%M%"=="%%~G" GOTO :MATCH
)
:NOMATCH
	::CLS
	ECHO ?? '[91m%M%[0m' is not a known shorthand, please try again
	GOTO :MENU
:MATCH
	ECHO ?? Switching to [96m%M%[0m ...
	GOTO :%M%

:42
cd /d e:\connexa\cxa042r-sales-manager-react\
GOTO :EXIT
:42r
cd /d e:\connexa\cxa042r-sales-manager-react\cxa042r-front-end\cxa042r-react-app\
GOTO :EXIT
:42s
cd /d e:\connexa\cxa042r-sales-manager-react\cxa042r-front-end\cxa042r-suitelet\
GOTO :EXIT
:46
cd /d e:\connexa\cxa046-json-relay\
GOTO :EXIT
:46t
cd /d e:\connexa\cxa046-api-types\
GOTO :EXIT
:25
cd /d e:\connexa\cxa025\
GOTO :EXIT
:25a
cd /d e:\connexa\cxa025\cxa025-admin-center\
GOTO :EXIT
:25c
cd /d e:\connexa\cxa025\cxa025-client\
GOTO :EXIT
:mp
more package.json
GOTO :EXIT
:tscp
tsc --project tsconfig.json --noEmit
GOTO :EXIT
:x
GOTO :EXIT
:q
GOTO :EXIT
:EXIT
::CLS
exit /B