# Power-Shell-Scripts
Little tools to help automatic process routine work on windows.

> ## MoveOldLogsToFolder
>>##  Demend :
>>將 "一個月前" 的檔案移動到 "OldLogs" 的資料夾中  
>>"一個月前" 定義 : 
>>*  執行日期 2017/10/17, 一個月前指的是"檔案建立時間" 在 "2017/10/17" 30天前 的所有檔案
>
>>## 使用方式 : 
>>* 將 Script File 放到欲整理的資料夾中 
>>* 建立 預設資料夾 - "OldLogs", 供存放舊檔案 
>>* 滑鼠右鍵點選 script file, 點選 "用 PowerShell 執行" 
>>* 執行動作當日起 30 天前的檔案將被移動至 預設資料夾. 
>>
>>## 更換移動的檔案類型 : \*\.log 
>>* 可將 \$strInclude \= "\*\.log" 預設檔案類型置換成欲移動的檔案類型副檔名 e.g. \*\.txt
>>
>>## 更換預設的資寮夾名稱 : OldLogs
>>* 可將 \$targetDirectory = "OldLogs" 預設資料夾名稱更換為想要的資料夾名稱
>>
>>## 更換比較日期基準 : 30 天前
>>* 可將 \$CompareDay = (Get-Date).AddDays(-30) , 更改為目標日期基準 e.g. \$CompareDay = (Get-Date)
>>* 支援 \.net framework 4+ 的 DateTime 語法
>>>## 更換篩選條件 : \* 天{前} 更換成 \* 天{後}
>>>*  可將 Where-Object \-FilterScript \{\(\$_\.CreationTime \-lt \$CompareDay\)\} 中的 \-lt 替換成 \-gt 
