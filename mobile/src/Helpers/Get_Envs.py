import os
from pathlib import path
from dotenv import load_dotenv

def get_enviroment_variables():
    basepath = Path()
    basedir = str(basepath.cwd())
    envars = basepath.cwd() / '.env'
    load_dotenv(envars)

    enviroment_variables = {
        'CNPJ' : os.getenv('CNPJ')
    }

    return enviroment_variables