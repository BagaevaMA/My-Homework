import os
from pprint import pprint

current = os.getcwd()
file_name = 'recipes.txt'
full_path = os.path.join(current, file_name)

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
file_name_1 = '1.txt'
full_path_1 = os.path.join(current, file_name_1)
file_name_2 = '2.txt'
full_path_2 = os.path.join(current, file_name_2)
file_name_3 = '3.txt'
full_path_3 = os.path.join(current, file_name_3)

with open(full_path_1, 'rt', encoding='utf-8') as file_1:
    f = file_1.read()
with open(full_path_2, 'rt', encoding='utf-8') as file_2:
    f = file_2.read()
with open(full_path_3, 'rt', encoding='utf-8') as file_3:
    f = file_3.read()

print('Задача №3')

list_file = os.listdir()
print(list_file)

dict_file = {}

for file1 in list_file:
    if file1.endswith('.txt') and file1.find('recipes'):
        with open(file1,'rt', encoding='utf-8') as f:
            count = 0
            for l in f:
                count += 1
            dict_file[file1] = count

print(dict_file)

sorted_turple = sorted(dict_file.items(), key = lambda x: x[1])
sorted_dict = dict(sorted_turple)
res_file = open('res_file.txt', 'a', encoding='utf-8')
for f in sorted_dict:
    name=f'{f}\n{sorted_dict[f]}\n'
    res_file.write(name)
    with open(f,'rt', encoding='utf-8') as text:
        for line in text:
            res_file.write(line)
    res_file.write('\n\n')

res_file.close()





















