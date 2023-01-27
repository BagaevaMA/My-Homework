import requests
from pprint import pprint
import os

TOKEN = input('Введите токен')

class YandexDisk:

    host = 'https://cloud-api.yandex.net:443/'

    def __init__(self, token):
        self.token = token

    def get_headers(self):
        return {'Content-Type': 'application/json', 'Authorization': f'OAuth {self.token}'}

    def get_files_list(self):
        uri = 'v1/disk/resources/files'
        url = self.host+uri
        headers = self.get_headers()
        params = {'limit':1, 'media_type':'image'}
        response = requests.get(url, headers=headers, params=params)
        pprint(response.json())
        return

    def get_upload_link(self, disk_file_name):
        uri = 'v1/disk/resources/upload/'
        url = self.host+uri
        params = {'path': f'/{disk_file_name}'}
        response = requests.get(url, headers=self.get_headers(), params = params)
        pprint(response.json())
        print(response.status_code)
        return response.json() ['href']

    def upload_from_pc(self, file_path: str, disk_file_name):
        upload_link = self.get_upload_link(disk_file_name)
        response = requests.put(upload_link,headers=self.get_headers(), data=open(file_path, 'rb'))
        print(response.status_code)
        if response.status_code ==201:
            print('Загрузка прошла успешно')

if __name__ == '__main__':
    ya = YandexDisk(TOKEN)

    current = os.getcwd()
    folder = 'MY HOMEWORK'
    file_name = '1.txt'
    file_path = os.path.join(current,folder, file_name)
    print(file_path)

    ya.upload_from_pc(file_path, 'new_file3.txt')