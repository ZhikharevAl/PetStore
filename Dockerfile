# Используйте официальный образ Newman
FROM postman/newman:alpine

# Установите рабочий каталог в Docker
WORKDIR /etc/newman

# Копируйте файлы коллекции Postman и файлы окружения в рабочий каталог в Docker
COPY ./postman/collections/PetStore.json ./postman/collections/PetStore.postman_environment.json ./

# Запустите коллекцию Postman с помощью Newman при запуске контейнера
CMD ["run", "PetStore.json", "--environment", "PetStore.postman_environment.json"]

