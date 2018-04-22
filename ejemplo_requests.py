import requests
import json
user={'username':'Wisconsin', 'password':'12345'}
res = requests.post('http://sis-operativos-2018.herokuapp.com/api.php/usuarios', json=user)
print(res.text)

