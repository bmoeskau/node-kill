# Node Kill

Bash script to kill and/or restart a named node server on OSX

## Usage

Kill only:

	sh kill.sh myserver

Kill and restart:

	sh kill.sh -r myserver

It is important to use `Ctrl-C` when exiting the node server so that the kill script can properly clean up. If you use `Ctrl-Z` the node process will still get cleaned up but the kill script process will remain running indefinitely.

## Contribute

Have an idea for improvement? Please fork the repo and send me a pull request. Ideas welcome!

## Acknowledgements

The line of code for finding PIDs by process name came from [this answer](http://stackoverflow.com/questions/3510673/find-and-kill-a-process-in-one-line-using-bash-and-regex/3510850#3510850) on StackOverflow. I encourage you to go vote it up.

## MIT License

Copyright (c) 2011 Brian Moeskau

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.