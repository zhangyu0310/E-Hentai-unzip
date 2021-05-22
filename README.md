# README

脚本用来批量解压从`E-Hentai`下载的压缩包。一键解压，方便快捷。

## 平台依赖

Windows 10
7-Zip（需要配置好环境变量。不想配置环境变量的，自己改一下ps1中的7z.exe路径）

## 功能简介

主要工作的是`BeHappy.ps1`这个PowerShell脚本。它可以解压`.7z`/`.rar`/`.zip`结尾的压缩文件。

（目前`E-Hentai`下载的资源，没见过其它类型的压缩包，有需要的可以改一下脚本第一行）

`E-Hentai`下载的压缩包有些里面是有文件夹的，有些是没有文件夹的。这个脚本会统一把内容解压到与压缩包同名的目录下。
并且把里面嵌套的同名文件夹去除。（强迫症行为，但如果里面的文件夹和压缩包不同名，那就不处理了）

这个`BeHappy.bat`脚本可以双击执行。工作是调用`BeHappy.ps1`脚本，解压完成后删除压缩包，然后把这些解压好的目录都移动到上一层目录。
（如果不需要最后这个移动动作，可以把`move %%i ../`这行删除掉）

## 使用简介

我的目录结构：

```cmd
D:\本子\下载>dir /B
BeHappy.bat
BeHappy.ps1
Kaho Shibuya - Camie Utsushimi.zip
Octokuro & Zirael Rem - Mount Lady x Himiko Toga.zip
README.md
[CherryS] Mysterious Swan.zip
```

这时候只要双击执行`BeHappy.bat`，所有压缩包会解压好，删除压缩包，并将解压完的目录放到`D:\本子\`下

```cmd
D:\本子>dir /B
Kaho Shibuya - Camie Utsushimi
Octokuro & Zirael Rem - Mount Lady x Himiko Toga
[CherryS] Mysterious Swan
```

```cmd
D:\本子\下载>dir /B
BeHappy.bat
BeHappy.ps1
README.md
```

## 写在后面

为什么用PowerShell写，只支持Windows10？

因为我对老版本的Windows深恶痛绝，并且觉得用Linux看色图有点奇怪，而且本穷逼买不起Mac。
而且这个脚本功能这么简单，如果需要别的平台，各位大佬花个3-5分钟就写一个了。

---

为什么只支持7-Zip？

因为7-Zip免费

---

这个脚本有个小问题，如果对方压缩的时候，使用的系统不是中文Windows，但是里面的文件名或文本内容包含了其它语言（非英语）的文字。
那么解压出来会是乱码。这种情况一般可以通过设置字符集来解决，但是Windows上7-Zip那个`-scs`参数我试了好像不太行。

所以我解压包含日文内容的压缩包的时候，一般会启动WSL，然后用`unzip -O cp932`来解决。这个脚本这里就暂且不支持了。

## Most important

Be Happy~
