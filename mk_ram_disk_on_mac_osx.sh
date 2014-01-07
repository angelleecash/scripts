#size is in blocks , roughly measured 2048 == 4K
diskutil erasevolume HFS+ 'COMPILE' `hdiutil attach -nomount ram://2048`
