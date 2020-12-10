# Задача. LDAP
1. Установить FreeIPA;
2. Написать Ansible playbook для конфигурации клиента;
3*. Настроить аутентификацию по SSH-ключам;
4**. Firewall должен быть включен на сервере и на клиенте.

# Решение

Примечание. Не просто же так предупреждали, что сценарий развертывания freeIPA на ansible довольно непредсказуемый. Плюсуем к этому требовательность к ресурсам и относительную неспешность. В среднем конфигурирование freeIPA приходилось ожидать около 5 минут. В случае проблем, к примеру, неправильной конфигурации - увеличивалось до 8 минут. А когда были проблемы с настройками сети - до 15 минут. Это всё было удручающе долго. Поэтому времени на всякие красивости не хватило. Всё по спартански!

Запуск стенда:

            $ vagrant up

После отработки сценариев. Открыть на локальной машине файл /etc/hosts
И добавить строчку: 

            192.168.200.10 ipaserver.raibeart.loc
            
Открыть браузер и перейти по адресу 

            ipaserver.raibeart.loc

![alt text](pic1.png "")

Ввести в поля авторизации логин и пароль: 

           admin
           ZZ12zz34

Мы успешно авторизовались:
![alt text](pic2.png "")


Проверка, что авторизация клиента идет по ключу:
Зайти на клиентскую машину:  

           $ vagrant ssh ipaclient

Повысить права до root:

           $ sudo -i

Переключимся на тестового пользователя: 

           $ su Agent007

Подключиться к серверу по ключу ssh ipaserver.raibeart.loc -v


