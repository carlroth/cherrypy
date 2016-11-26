function before_install {
    export CC=clang
    export CXX=clang++
    get_macpython_environment $MB_PYTHON_VERSION venv
    source venv/bin/activate
    if [ "$MB_PYTHON_VERSION" == "3.2" ]
    then
        pip install --upgrade pip
    fi
    pip install --upgrade wheel
}
