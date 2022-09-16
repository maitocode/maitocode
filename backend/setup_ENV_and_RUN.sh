if [ ! -d ./env ]
then 
    rm -rf env
    python -m venv env
fi
    
source ./env/bin/activate
./env/bin/python -m pip install --upgrade pip
pip install -r requirements.txt

./env/bin/python manage.py makemigrations
./env/bin/python manage.py migrate
./env/bin/python manage.py runserver