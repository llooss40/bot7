#!/bin/bash
# Запуск бота подъезда 7
# Требует Python 3.10+

if [ ! -f ".env" ]; then
    echo "Ошибка: файл .env не найден"
    echo "Скопируй .env.example в .env и заполни переменные"
    exit 1
fi

if [ ! -d "venv" ]; then
    echo "Создаю виртуальное окружение..."
    python3 -m venv venv
fi

source venv/bin/activate
pip install -r requirements.txt -q

echo "Запускаю бота..."
python3 bot.py
