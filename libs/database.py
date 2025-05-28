from robot.api.deco import keyword
from pymongo import MongoClient

# ✅ Insira sua string de conexão real aqui
client = MongoClient('mongodb+srv://qa:xperience@cluster0.8gdoakh.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0')
db = client['markdb']

@keyword('Remove user from database')
def remove_user(email):
    users = db['users']
    users.delete_many({'email': email})
    print(f'[DB] Usuário removido: {email}')

@keyword('Insert user from database')
def insert_user(user):
    users = db['users']
    users.insert_one(user)
    print(f'[DB] Usuário inserido: {user}')
