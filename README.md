# ShootersPool 离线游戏配置脚本</br>ShootersPool Offline Game Configuration Script
  
## 概述  

此 PowerShell 脚本旨在自动设置 ShootersPool 游戏中的离线比赛。 它允许用户保存他们的游戏配置并在不同的设置之间快速切换。

我做了个脚本，打开SP离线游戏时，可以按照自己的选择快速切换到自己配置的不同的台球比赛，不用再重新设置球桌，桌布，摩擦等参数。原配置文件在同目录里自动备份，不会删除。

## 设置说明

1. 打开SP离线游戏并配置离线比赛设置（台球桌、球组、竞技场等）。 设置好后开始比赛，然后退出游戏。
1. 按 `win + r` 或在文件夹地址栏中输入SP配置文件的路径（默认路径：`%AppData%\ShootersPool\settings\lastMatch.json`）。
1. 打开 `lastMatch.json` 文件并使用自定义文件名和路径保存。
1. 在脚本 `Replace_SP-lastMatch_config_script.ps1` 的 `设置1` 部分，填写自定义配置文件、游戏配置文件和SP离线程序路径的路径和变量名称。
1. 在 `设置 2` 部分，填写按键字符、填写 `设置 1` 中自定义配置文件对应的变量名，并去掉相关代码中的注释符号 `#` 。
1. 在 `设置3` 部分，填写自定义提示文本。
1. 为此脚本创建快捷方式并将其移动到自定义位置。
1. （可选）附件 `shooterspool_offline.ico` 是一个图标文件，可用于替换脚本快捷方式的图标。  

![!\[!\\[alt text\\](shooterspool_offline.ico)\](https://github.com/haiyulin/ShootersPool-Configuration-Script/blob/main/images/shooterspool_offline.ico)](https://raw.githubusercontent.com/haiyulin/ShootersPool-Configuration-Script/main/images/shooterspool_offline.ico)

## 运行脚本

1. 双击脚本文件 `Replace_SP-lastMatch_config_script.ps1`（或其快捷方式）运行它。 按照提示进行选择。
1. 脚本将在替换之前在同一目录中备份 SP 配置文件 `lastMatch.json` （备份的扩展名为 `.bak` ）。
1. 如果使用此脚本后游戏运行不正确，请删除原始配置文件并重命名备份文件以匹配原始文件的名称（删除 `.bak` 扩展名）。  

![alt text](https://github.com/haiyulin/ShootersPool-Configuration-Script/blob/main/images/script_execution.gif?raw=true)

## 提醒

请评估并承担与运行此脚本相关的风险。 假设使用此脚本的玩家熟悉并理解 PowerShell 命令代码。

## 作者

- ShootersPool：LHsea
</br></br></br></br>

>## README EN  

## Overview

This PowerShell script is designed to automate the setup of offline matches in the ShootersPool game. It allows users to save their game configurations and quickly switch between different setups.

I’ve created a script that allows for quick switching to different pool games configured by the user when opening the SP offline game, eliminating the need to reset parameters like the pool table, cloth, friction, etc. The original configuration file is automatically backed up in the same directory and is not deleted.

## Setup Instructions

1. Open the SP offline game and configure the offline match settings (pool table, ball set, arena, etc.). Start the match after setting up, then exit the game.
1. Press `win + r` or enter the path to the SP configuration file in the folder address bar (default path: `%AppData%\ShootersPool\settings\lastMatch.json`).
1. Open the `lastMatch.json` file and save it with a custom filename and path.
1. In the script's `Setting 1` section, fill in the paths and variable names for your custom configuration file, game configuration file, and the SP offline program path.
1. In the `Setting 2` section, fill in the key characters, the variable names corresponding to the custom configuration file in `Setting 1`, and remove the comment symbol `#` from the related code.
1. In the `Setting 3` section, fill in the custom prompt text.
1. Create a shortcut for this script and move it to a custom location.
1. (optional) The attachment `shooterspool_offline.ico` is an icon file that can be used to replace the icon of the script shortcut.  

![!\[!\\[alt text\\](shooterspool_offline.ico)\](https://github.com/haiyulin/ShootersPool-Configuration-Script/blob/main/images/shooterspool_offline.ico)](https://raw.githubusercontent.com/haiyulin/ShootersPool-Configuration-Script/main/images/shooterspool_offline.ico)

## Running the Script

1. Double-click the script file `Replace_SP-lastMatch_config_script.ps1` (or its shortcut) to run it. Follow the prompts to make your selection.
1. The script will back up the SP configuration file `lastMatch.json` in the same directory before replacing it (the backup will have a `.bak` extension).
1. If the game runs incorrectly after using this script, delete the original configuration file and rename the backup file to match the original file's name (remove the `.bak` extension).  

![alt text](https://github.com/haiyulin/ShootersPool-Configuration-Script/blob/main/images/script_execution.gif?raw=true) 

## Reminder

Please assess and assume the risks associated with running this script. It is assumed that players using this script are familiar with and understand PowerShell command code.

## Authors

- ShootersPool: LHsea
