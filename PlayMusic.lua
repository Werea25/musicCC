-- Загрузите библиотеку HTTP
local http = require "http"

-- URL-адрес JSON-файла
local url = "https://example.com/data.json"

-- Запрос к URL-адресу
local response = http.get(url)

-- Проверьте статус ответа
if response.status ~= 200 then
  print("Ошибка: HTTP-статус " .. response.status)
  return
end

-- Получите JSON-данные
local jsonData = response.body

-- Преобразуйте JSON-строку в таблицу Lua
local data = json.decode(jsonData)

-- Обработайте JSON-данные
print("JSON-данные:")
print(table.inspect(data))
