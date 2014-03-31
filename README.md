mock_court
==========

License  
---  
The MIT License (MIT)  

Copyright (c) 2014 Zhe Wang  

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:  

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.  

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.  

What is mock_court?  
---  
Mock_court is a web app for virtual court judging. It let user register to participate in a forum that is supervised by judge. All regular users can post and comment in the forum but their posts won't be visible to other regular users unless the judge approves it.  
  
On the top of the forum where users can post their thoughts and evidence, mock_court also provides a real-time supervised chatting room that is able to serve at most 1,000 users. None of regular users' messages will be visible to other regular users unless the judge approves so. The workflow is as follows: a regular user types in some message he wants to be broadcasted; the judge gets the message and can either approve or deny it; if the judge approve the message then it will be broadcasted to every user, but if the judge deny the message, everyone will get a hint saying the original poster's message has been denied, without actually seeing the message. Note the judge's message will be broadcasted to everyone no matter what.  
  
The idea (thanks for @wisdompilot's idea) behind this app is court presence is time-consuming and costly for all parties. So it will be awesome for us to have a realtime app that can be moderated by judge, mimicking the actions in a real court.  
    
Usage  
---  
git clone https://github.com/jw2013/mock_court.git  
bundle install  
rake db:migrate  
rackup faye.ru -E production -s thin  
rails s  
The app will then be up and running at localhost:3000. As this app is made in less than 24 hours, please use it at your own discretion. Some security vulnerabilities may exist and I don't plan to find and fix them.
  
Credit  
--  
Mock_court is made in HackDuke 2014 by @wisdompilot, @andy1126 and me.
