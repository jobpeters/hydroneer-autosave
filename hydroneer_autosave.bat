@echo on
for /f "delims=/-" %%a in ('date /t') do @set DATE = %%a
FOR /F "tokens=1,2 delims=:." %%A IN ("%Time%") DO (
	SET /A Hours   = 100%%A %% 100
	SET /A Minutes = 100%%B %% 100
)
set GAME_FOLDER=D:\Steam\steamapps\common\Hydroneer
set SAVE_FOLDER=%localappdata%\Mining\Saved\SaveGames
set BACKUP_FOLDER=D:\HydroneerBackups\%DATE%_%Hours%-%Minutes%
xcopy /i/d/y/q %SAVE_FOLDER% %BACKUP_FOLDER%
start %GAME_FOLDER%\Mining.exe