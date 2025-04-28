#!/bin/sh
# Made By Yazeed AlKhalaf

emptySpace() {
    echo ""
}

header() {
    echo "Welcome To Uncharted App instal flutter sdk"
    echo "         "
    emptySpace
    emptySpace
}

windows() {
    echo "You Chose Windows"
    emptySpace
    emptySpace
    echo "Downloading Flutter SDK for Windows... (This may take a while)"
    emptySpace
    wget https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.29.3-stable.zip
    emptySpace
    echo "Unzipping Flutter SDK... (This may take a while)"
    emptySpace
    unzip flutter_windows_3.29.3-stable.zip
    emptySpace
    echo "Now you have to add the Flutter SDK to the PATH variable:"
    echo "1. Press Windows key"
    echo "2. Search for \"env\", then click on the first result"
    echo "3. Click on \"Environment Variables\""
    echo "4. Click on the \"Path\" variable in user variables"
    echo "5. Click \"Edit\" button"
    echo "6. Click on \"New\" button"
    echo "7. Paste this: `pwd`/flutter/bin"
}

linux() {
    echo "You Chose Linux"
    emptySpace
    emptySpace
    echo "Downloading Flutter SDK for Linux... (This may take a while)"
    emptySpace
    wget  https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.29.3-stable.zip
    emptySpace
    echo "Unzipping Flutter SDK... (This may take a while)"
    emptySpace
    tar xf ./flutter_linux_3.29.3-stable.tar.xz
    emptySpace
    echo "Now you have to add the Flutter SDK to the PATH variable:"
    echo "1. Open a new terminal"
    echo "2. Type: \"sudo nano /etc/profile\" or \"sudo nano ~/.bashrc\""
    echo "      note: OTHER THAN THAT YOU MUST KNOW IT :)"
    echo "3. Add this line to the end:"
    echo "      export PATH=\"\$PATH:`pwd`/flutter/bin\""
    echo "4. Exit with saving changes by:"
    echo "      - Press \"CTRL + X\""
    echo "      - Press \"Y\""
    echo "      - Press \"[ENTER]\""
}

menu() {
    PS3="Type the number that corresponds to your OS, followed by [ENTER]:"
    options=("Windows" "macOS" "Linux" "Quit")
    clear
    header
    select opt in "${options[@]}"
    do
        case $opt in
            "Windows")
                windows
                break
                ;;
            "Linux")
                linux
                break
                ;;
            "Quit")
                echo "Bye Bye!"
                break
                ;;
            *) 
                clear
                header
                menu
                ;;
        esac
    done
}

menu

echo "Done!"