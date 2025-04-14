@echo off

REM Create virtual environment
python -m venv jlab_env
call jlab_env\Scripts\activate

REM Upgrade pip
python -m pip install --upgrade pip

REM Install dependencies
pip install -r requirements.txt

REM Add kernel to Jupyter
python -m ipykernel install --user --name=jlab_env --display-name "Python (jlab_env)"

REM Launch JupyterLab
jupyter lab