# Ruby on Rails 7
### Good Programmer

## 1 урок
### Создание и настройка приложения Rails

Создание приложения `Rails`
```
rails new rails_gooprog
```
Удаляем версию `Rails` файл и из файла запись `Gemgile`

Cоздаем новую группу `production` в ней добавляем `gem 'pg'`, чтобы работа в релизе велась через базу данных `Postgesql` и ` gem 'sqlite3'` перемещяем в группу `development` и `test`

Локально задаем параметры для работы без `production`
```
bundle config set --local without 'production'
```
Cоздается файл `.bundle/config` внутри строчка
```
---
BUNDLE_WITHOUT: "production"
```
После обновляем `Gemfile.lock` командой
```
bundle install
```
не будет зайдествован `gem 'pg'`

## 2 урок
### Модели (models)

Создаем модель вопроса, для этого в Rails, есть генераторы моделей

Создаем модель Question с полями body:text и user_id:integer
```
rails generate model question body:text user_id:integer
```
Внутри папки `models` создание модель `Question`
class Question < ApplicationRecord
 ...
end

Внутри папки `db/migrate` создание файла миграции для работы с базами данных

Создаем таблицы в базе данных
```
rails db:migrate
```
Откат создание таблиц в базе данных
```
rails db:rollback
```
Запуск консоли Rails
```
rails c
```
Выход из консоли
```
quit
```
Настройки базы данных лежат в  `database.yml`

!!! В файлик миграции базы данных в строчке `t.integer :user_id` сразу добавить `, index: true`
откатить и потом накатить миграции

## 3 Урок
### Контроллеры, Руты (controllers, routes)

Создание контроллера
```
rails g controller questions
```
