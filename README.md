# kitabisa-test
###How to run api test
    
    install python 
    
    pip install robotframework
    
    robot --version
        
    pip install robotframework-requests
    pip install robotframework-faker

How to run Script
    cd /API_Test  
    robot api.robot


###How to run web test
    
    install python 
    
    pip install robotframework

    robot --version
       
    pip install --upgrade robotframework-seleniumlibrary
    
    pip install robotframework-faker

Setup Webdriver 
Windows CLI #

    Get familiar with Windows Environment Variables in Command Prompt
    
    Create directory C:\bin
    Download it for Windows and save to C:\bin
    
    Open Command Prompt and set the PATH for your account with

    setx PATH "C:\bin;%PATH%"

    Restart Command Prompt
    Verify setup with

    chromedriver.exe -v

How to run Script

    cd /UI_Test 
    robot register.robot 

### Windows user
*To install Node JS, run the following command from the command line or from PowerShell:

    choco install nodejs

verify installation

    node -v
    npm -v

Install Artillery

    npm install -g artillery@latest

verify installation

    artillery dino

How to run Script

    cd /Load_test
    artillery run load_test.yml

