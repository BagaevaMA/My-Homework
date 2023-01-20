import os
from pprint import pprint

current = os.getcwd()
folder = 'MY HOMEWORK'
file_name = 'recipes.txt'
full_path = os.path.join(current, folder, file_name)

with open(full_path, 'rt', encoding='utf-8') as file:
    f = file.read()

print('Задача №1')

with open(full_path, 'rt', encoding='utf-8') as file:
    cook_book = {}
    for line in file:
        dish_name = line.strip()
        number_ingridients = int(file.readline())
        ingridients = []
        cook_book[dish_name] = ingridients
        for i in range(number_ingridients):
            ingridient = file.readline().strip()
            ingredient_name, quantity, measure = ingridient.split(' | ')
            ingridients.append({'ingredient_name' : ingredient_name, 'quantity' : int(quantity), 'measure': measure})
        file.readline()
pprint(cook_book)

print('Задача №2')

def get_shop_list_by_dishes(dishes, person_count):
    result = {}
    for dish in dishes:
        for key, value in cook_book.items():
            ingridients_list = {}
            if dish in key:
                for i in value:
                    ing_dic = {}
                    for k, v in i.items():
                        ing_dic[k] = v
                    lst = list(ing_dic.items())
                    lst.reverse()
                    for item in lst:
                        count = dict(lst[:2])
                        count['quantity'] *= person_count
                    ingridients_list[lst[2][1]] = count
                    result.update(ingridients_list)
    pprint(result)
    return(result)

get_shop_list_by_dishes(['Запеченный картофель', 'Омлет'], 2)


current = os.getcwd()
folder = 'MY HOMEWORK'
file_name_1 = '1.txt'
full_path_1 = os.path.join(current, folder, file_name_1)
file_name_2 = '2.txt'
full_path_2 = os.path.join(current, folder, file_name_2)
file_name_3 = '3.txt'
full_path_3 = os.path.join(current, folder, file_name_3)

with open(full_path_1, 'rt', encoding='utf-8') as file_1:
    f = file_1.read()
with open(full_path_2, 'rt', encoding='utf-8') as file_2:
    f = file_2.read()
with open(full_path_3, 'rt', encoding='utf-8') as file_3:
    f = file_3.read()

print('Задача №3')

line_count_1 = str(sum(1 for line in open(full_path_1, 'rt', encoding='utf-8')))
print(line_count_1)
line_count_2 = str(sum(1 for line in open(full_path_2, 'rt', encoding='utf-8')))
print(line_count_2)
line_count_3 = str(sum(1 for line in open(full_path_3, 'rt', encoding='utf-8')))
print(line_count_3)


res_file = open("res_file.txt","w", encoding='utf-8').write(file_name_2 + ('\n') + line_count_2 + open(full_path_2, 'rt', encoding='utf-8').read() + ('\n\n') + file_name_1 + ('\n') + line_count_1 +  ('\n') + open(full_path_1, 'rt', encoding='utf-8').read() +('\n\n')+  file_name_3 + ('\n') +  line_count_3+ ('\n') +  open(full_path_3, 'rt', encoding='utf-8').read())


































