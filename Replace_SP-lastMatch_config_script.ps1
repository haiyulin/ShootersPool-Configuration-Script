# 【设置说明】
# 1. 打开SP离线游戏，设置你要保存的离线比赛（台球桌、球台、竞技场等），设置后开始比赛，然后退出游戏，
# 2. 按 “win + r” 或在文件夹地址栏中输入 SP 配置文件的地址（默认地址：%AppData%\ShootersPool\settings\lastMatch.json），
# 3. 打开 lastMatch.json 文件并将其保存为自定义文件名和路径，
# 4. 在下面的 “设置 1” 中填写自定义配置文件、游戏配置文件以及 SP 离线程序路径和变量名，
# 5、下面“设置 2”中填写按键字符，填写“设置 1”中自定义配置文件对应的变量名，在相关代码中去掉注释符号“#”（参考下面的代码 ),
# 6. 在下方“设置 3”中填写自定义提示文字。
# 7. 为此脚本创建快捷方式并将其移动到自定义地址。

# 【运行脚本】
# 1. 双击要运行的脚本文件（或快捷方式），根据提示选择输入，
# 2. 在替换 SP 配置文件 lastMatch.json 之前，脚本会在同一目录下备份该文件（扩展名为.bak）。
# 3. 如果运行此脚本后游戏运行不正确，请删除原来的配置文件，修改备份文件的文件名与源文件相同（去掉.bak扩展名）。
# 4. （可选）附件 `shooterspool_offline.ico` 是一个图标文件，可用于替换脚本快捷方式的图标。

# 【提醒】
# 请评估并承担与运行此脚本相关的风险，
# 假设使用该脚本的玩家熟悉并理解 PowerShell 命令代码。

# 【作者】
# ShootersPool: LHsea


# 【Setup Instructions】
# 1. Open SP offline game, set up the offline match you want to save (pool table, ball set, arena, etc.), start the match after setting, then exit the game,
# 2. Press "win + r" or enter the address of the SP configuration file in the folder address bar (default address: %AppData%\ShootersPool\settings\lastMatch.json),
# 3. Open the lastMatch.json file and save it as a custom filename and path,
# 4. Fill in the custom configuration file, game configuration file, and SP offline program path and variable names in "Setting 1" below,
# 5. Fill in the key characters in "Setting 2" below, fill in the variable names corresponding to the custom configuration file in "Setting 1", and remove the comment symbol "#" from the related code (refer to the code below),
# 6. Fill in the custom prompt text in "Setting 3" below.
# 7. Create a shortcut for this script and move it to a custom address.

# 【Running the Script】
# 1. Double-click the script file (or shortcut) to run, and choose input according to the prompts,
# 2. Before replacing the SP configuration file lastMatch.json, the script will back up this file in the same directory (with the extension .bak).
# 3. If the game runs incorrectly after running this script, delete the original configuration file, modify the backup file's filename to be the same as the source file (remove the .bak extension).
# 4. (optional) The attachment `shooterspool_offline.ico` is an icon file that can be used to replace the icon of the script shortcut.

# 【Reminder】
# Please assess and assume the risks associated with running this script, 
# It is assumed that players using this script are familiar with and understand PowerShell command code.

# 【Authors】
# ShootersPool: LHsea



# ------------------------------- 设置 1 （Setting 1）---------------------------------------------
# 设置或增加自定义比赛配置文件的路径和变量名
# Set or add the path and variable name of the custom match configuration file

$snkSetFile = "替换成自己保存的配置文件路径.json（包括文件名）Replace it with the configuration file path.json you saved (including file name)"
$zh8ballSetFile = "替换成自己保存的配置文件路径.json（包括文件名）Replace it with the configuration file path.json you saved (including file name)"

# 设置SP配置文件 lastMatch.json 和 SP 离线游戏文件 ShootersPool.exe 的路径（变量名不要修改）
# Set the path of the SP configuration file lastMatch.json and the SP offline game file ShootersPool.exe (do not modify the variable names)
$lastMatchFile = "$env:AppData\ShootersPool\settings\lastMatch.json"
$shootersPoolExe = "替换成自己安装的游戏文件ShootersPool.exe路径（不包括文件名）Replace it with the path of the game file ShootersPool.exe you installed (excluding the file name)"
# -----------------------------------------------------------------------------------

# 提示和读取输入的函数
# Function to prompt and read input
function Get-UserInput {
    $userInput = Read-Host "输入（Enter）"
    return $userInput
}

# 替换和备份游戏配置文件 lastMatch.json 并运行游戏
# Replace and back up the game configuration file lastMatch.json and run the game
function replace_lastMatch {
    param (
        [string]$contentToCopy
    )
    # 创建 lastMatch.json 备份文件
    # Create a backup file for lastMatch.json
    $backupFile = "$script:lastMatchFile.bak"
    Copy-Item -Path $script:lastMatchFile -Destination $backupFile

    # 将自定义比赛配置文件内容写入SP 配置文件 lastMatch.json
    # Write the content of the custom match configuration file into the SP configuration file lastMatch.json
    Set-Content -Path $script:lastMatchFile -Value $contentToCopy

    # 运行SP离线游戏 shootersPool.exe
    # Run the SP offline game shootersPool.exe
    Start-Process -FilePath  ShootersPool.exe  -WorkingDirectory $script:shootersPoolExe
    Write-Host "正在打开离线ShooterPool游戏...（Launching offline ShooterPool game...）"
}

# 根据用户输入操作
# Operate based on user input
function ContentToCopy {
    param (
        [string]$userInput
    )
    switch ($userInput) {

        # ------------------------------- 设置 2 （Setting 2）-------------------------------------------
        # "替换成自定义的按键字符" {
        #     # 读取自定义 比赛配置文件内容
        #     $contentToCopy = Get-Content -Path $script:替换成上面设置路径的自定义的变量名 -Raw  
        #     replace_lastMatch -contentToCopy $contentToCopy
        # }
        # "Replace with custom key character" {
        #     # Read the content of the custom match configuration file
        #     $contentToCopy = Get-Content -Path $script:Replace with the custom variable name set above -Raw  
        #     replace_lastMatch -contentToCopy $contentToCopy
        # }
        # ----------------------------------------------------------------------------------    
        "" { 
            # 运行SP离线游戏 shootersPool.exe
            # Run the SP offline game shootersPool.exe
            Start-Process -FilePath  ShootersPool.exe  -WorkingDirectory $script:shootersPoolExe
            Write-Host "正在打开离线ShooterPool游戏...（Launching offline ShooterPool game...）"           
        }        
        "3" {
            # 读取自定义斯诺克比赛配置文件内容
            # Read the content of the custom snooker match configuration file
            $contentToCopy = Get-Content -Path $script:snkSetFile -Raw
            replace_lastMatch -contentToCopy $contentToCopy
        }
        "8" {
            # 读取自定义中国8球比赛配置文件内容
            # Read the content of the custom Chinese 8-ball match configuration file
            $contentToCopy = Get-Content -Path $script:zh8ballSetFile -Raw
            replace_lastMatch -contentToCopy $contentToCopy
        }
        "q" {
            # 退出游戏 Exit the game
            Write-Host "正在退出...（Exiting...）"
        } 
        default {
            Write-Host "输入错误，请重新输入。（Invalid input, please re-enter.）
            
            "
            return $false        
        }
    }
    return $true
}

# --------------------------------------- 设置 3 （Setting 3） --------------------------------------------
# 在下面的双引号的范围内，增加自定义提示信息文本
# Add custom prompt text within the range of the double quotes below

# 提示信息 Prompt message
Write-Host "
请输入台球比赛类型, 并按回车键。（Please enter the type of billiards match and press Enter.） 

[3] - 斯诺克比赛（Snooker match）

[8] - 中国8球比赛（Chinese 8-ball match）

[Enter] - 继续上次的比赛设置（Continue with last match settings ）

[q] - 退出游戏（Exit the game） 
    
" 
# ------------------------------------------------------------------------------------------


# 主循环 Main loop
do {
    $userInput = Get-UserInput
    $exitScript = ContentToCopy -userInput $userInput 
} while (-not $exitScript)

# 暂停退出并提示用户输入
#Read-Host -Prompt "按任意键退出..."
# Pause before exiting and prompt user input
#Read-Host -Prompt "Press any key to exit..."

# 暂停两秒后，退出脚本
# Pause for two seconds before exiting the script
Start-Sleep -Seconds 2