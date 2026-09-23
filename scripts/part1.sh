#!/bin/bash
# Часть 1: дерево каталогов, файлы, права доступа

cd /workspaces/lab_0_ABC
rm -rf lab0
mkdir lab0
cd lab0

mkdir -p eleon/victor/kitchen
mkdir -p eleon/victor/hall
mkdir -p eleon/hotel_office
mkdir -p eleon/reception
mkdir -p eleon/staff_room
mkdir -p eleon/roof

cat > eleon/victor/kitchen/new_menu << 'TXT'
Блюдо от Виктора Баринова
Закуска от Екатерины Семёновой
Десерт для гостей отеля Eleon
Новое блюдо Дениса на проверке у шефа
TXT

cat > eleon/victor/kitchen/dinner_order << 'TXT'
На кухне подготовить утиную ножку
В зал отправить две рыбные закуски
Для Софии приготовить особый десерт
TXT

cat > eleon/victor/hall/opening_guests << 'TXT'
Элеонора Андреевна встречает первых гостей
София Яновна проверяет готовность зала
Виктор Баринов представляет новое меню
Костя помогает команде ресторана
TXT

cat > eleon/hotel_office/eleonora_order << 'TXT'
Ресторан Victor должен открыться вовремя
Баринов отвечает за кухню
София встречает важных гостей
Персонал отеля помогает в зале
TXT

cat > eleon/reception/sofia_schedule << 'TXT'
Утром проверить ресторан Victor
Днём провести встречу с Элеонорой
Вечером принять первых гостей
TXT

cat > eleon/reception/guest_notes << 'TXT'
Гости попросили столик рядом с окном
Один гость хочет поговорить с Бариновым
Постоянные гости ждут знакомое блюдо
TXT

cat > eleon/staff_room/barinov_uniform << 'TXT'
Новый китель приготовлен для шефа
На форме вышито имя Виктор
Китель находится в комнате персонала
TXT

cat > eleon/staff_room/kostya_message << 'TXT'
Костя приехал помочь перед открытием
Бар готов к вечернему обслуживанию
После смены он ждёт Настю в холле
TXT

cat > eleon/roof/max_letter << 'TXT'
Макс передал привет всей команде
Он помнит работу с Виктором Петровичем
Письмо оставлено на крыше отеля
TXT

cat > eleon/roof/roof_event << 'TXT'
Баринов поднялся на крышу после смены
Элеонора нашла его возле старого рояля
Команда ресторана собралась вместе
TXT

cat > opening_day << 'TXT'
Ресторан Victor открывается вечером
Баринов проверяет работу кухни
София встречает гостей в зале
TXT

chmod 755 eleon
chmod 750 eleon/victor/kitchen
chmod 640 eleon/victor/kitchen/dinner_order
chmod 710 eleon/hotel_office
chmod 640 eleon/reception/sofia_schedule
chmod 750 eleon/staff_room
chmod 600 eleon/staff_room/barinov_uniform
chmod 640 eleon/roof/max_letter
chmod 644 opening_day

chmod u=rwx,g=rx,o=--- eleon/victor
chmod u=rw,g=r,o=r   eleon/victor/kitchen/new_menu
chmod u=rwx,g=rwx,o=--- eleon/victor/hall
chmod u=rw,g=r,o=r   eleon/victor/hall/opening_guests
chmod u=r,g=r,o=---  eleon/hotel_office/eleonora_order
chmod u=rwx,g=rx,o=x eleon/reception
chmod u=rw,g=r,o=--- eleon/reception/guest_notes
chmod u=r,g=r,o=---  eleon/staff_room/kostya_message
chmod u=rwx,g=rx,o=--- eleon/roof
chmod u=r,g=r,o=---  eleon/roof/roof_event

echo "=== Часть 1 выполнена ==="
ls -lR
