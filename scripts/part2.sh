#!/bin/bash
# Часть 2: копирование, перемещение, создание ссылок

cd /workspaces/lab_0_ABC/lab0

# 1. Копировать eleonora_order -> owner_order
cp eleon/hotel_office/eleonora_order eleon/victor/hall/owner_order

# 2. Рекурсивно копировать каталог roof -> roof_archive
cp -r eleon/roof eleon/victor/roof_archive

# 3. Относительная символическая ссылка current_menu -> new_menu
ln -s ../victor/kitchen/new_menu eleon/staff_room/current_menu

# 4. Символическая ссылка hotel_reception -> eleon/reception
ln -s eleon/reception hotel_reception

# 5. Жёсткая ссылка opening_log на файл opening_day
ln opening_day eleon/victor/hall/opening_log

# 6. Объединить opening_guests и guest_notes -> all_guests
cat eleon/victor/hall/opening_guests eleon/reception/guest_notes > eleon/reception/all_guests

# 7. Дописать kostya_message в конец opening_day
cat eleon/staff_room/kostya_message >> opening_day

# 8. Переместить max_letter -> max_message
mv eleon/roof/max_letter eleon/hotel_office/max_message

echo "=== Часть 2 выполнена ==="
ls -lR