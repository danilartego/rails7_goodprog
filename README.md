# Ruby on Rails 7
Good Programmer

Первый урок начало
Создание приложения Rails

sqlite3 перемещяем в группу development и тест
создаем новую группу production в ней добавляем gem 'pg'

Локально задаем параметры для работы без production
bundle config set --local without 'production'

создается файл .bundle/config внутри строчка
---
BUNDLE_WITHOUT: "production"

после обновляем gem командой
bundle install
не будет зайдествован gem 'pg'