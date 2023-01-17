# Ruby on Rails 7
### Good Programmer

### 1 урок начало
# Создание приложения Rails

Cоздаем новую группу `production` в ней добавляем `gem 'pg'`

`sqlite3` перемещяем в группу `development` и тест

Локально задаем параметры для работы без `production`
```
bundle config set --local without 'production'
```
Cоздается файл `.bundle/config` внутри строчка
```
---
BUNDLE_WITHOUT: "production"
```
После обновляем gem командой
```
bundle install
```
не будет зайдествован `gem 'pg'`