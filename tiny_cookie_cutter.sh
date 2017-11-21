HORIZONTALLINE ="==================================================="
clear
echo -e "\n $HORIZONTALLINE"
echo "                           PROJECT INFO"
echo $HORIZONTALLINE
read -p "Please enter your project name:" project_name
read -p "What is the author name:" author_name
read -p "Let's write some descriptions for the project:" descriptions

mkdir $project_name
cd $project_name
touch __init__.py
# # -*- coding: utf-8 -*-
echo "__author__ = $author_name" > __init__.py
touch LICENSE.md
# HORIZONTALLINE ="==================================================="
clear
echo -e "\n $HORIZONTALLINE"
echo "                           LICENSE CHOICE"
echo $HORIZONTALLINE
echo "What type of license you want to have:
      (Refer to README.md for more information.)"
echo $HORIZONTALLINE
echo "1. MIT license"
echo "2. The Unlicense"
echo -e "$HORIZONTALLINE\n"
read -p "Type the option you select (only enter number 1 or 2): " choice
if [ "$choice" -eq "$choice" 2> /dev/null ]; then
  if [ $choice -lt 1 -o $choice -gt 3 ]; then
    echo -e "\n==> Enter number 1 or 2 <=="
  elif [ $choice -eq 1 ]; then
      echo "MIT License

  Copyright (c) [year] [fullname]

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the 'Software'), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE." > LICENSE.md

  elif [ $choice -eq 2 ]; then
      echo "
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED *AS IS*, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org>" > LICENSE.md
    fi
  else
    echo -e "\n==> This is not a number <=="
    echo "The LICENSE file will be blank"
  fi

touch README.md
echo "## $project_name" > README.md
echo $descriptions >> README.md
touch CITATION.md
mkdir data
mkdir doc
mkdir results
mkdir src
mkdir bin
cd doc
touch notebook.md
touch manuscript.md
