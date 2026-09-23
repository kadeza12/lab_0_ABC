#!/bin/bash
# Часть 3: поиск, фильтрация, удаление

cd /workspaces/lab_0_ABC/lab0

echo ""
echo "=== Пункт 4.1: файлы eleon, сортировка по размеру, 6 первых ==="
ls -lR eleon | grep '^-' | sort -k5 -n -r | head -6

echo ""
echo "=== Пункт 4.2: строки с баринов/софия, без гост, сортировка, 5 первых ==="
cat eleon/victor/kitchen/new_menu eleon/victor/kitchen/dinner_order \
    eleon/victor/hall/opening_guests eleon/victor/hall/owner_order \
    eleon/victor/hall/opening_log eleon/hotel_office/eleonora_order \
    eleon/hotel_office/max_message eleon/reception/sofia_schedule \
    eleon/reception/guest_notes eleon/reception/all_guests \
    eleon/staff_room/barinov_uniform eleon/staff_room/kostya_message \
    eleon/victor/roof_archive/max_letter eleon/victor/roof_archive/roof_event \
    | grep -iE 'баринов|софия' | grep -iv 'гост' | sort | head -5

echo ""
echo "=== Пункт 4.3: количество файлов с 'гост' в hall и reception ==="
grep -ril 'гост' eleon/victor/hall eleon/reception | wc -l

echo ""
echo "=== Пункт 4.4: первая/последняя строка файлов reception, фильтр ==="
{ head -n 1 eleon/reception/*; tail -n 1 eleon/reception/*; } | grep -v '==>' | grep -iE 'гост|соф' | sort -r

echo ""
echo "=== Пункт 4.5: all_guests без 'столик', 4 строки, слова ==="
grep -v 'столик' eleon/reception/all_guests | sort -r | head -4 | wc -w

echo ""
echo "=== Пункт 4.6: файлы с 2 жёсткими ссылками ==="
ls -lR . | grep '^-' | grep '^.\{11\} *2 ' | sort -k9

echo ""
echo "=== Пункт 4.7: файлы в roof_archive с 'баринов' или 'макс' ==="
grep -rilE 'баринов|макс' eleon/victor/roof_archive | wc -l

echo ""
echo "=== Пункт 5: удаление ==="
rm -f eleon/hotel_office/eleonora_order
rm -f eleon/staff_room/current_menu
rm -f hotel_reception
rm -f opening_day
rm -f eleon/victor/hall/opening_log
rm -f eleon/roof/roof_event
rmdir eleon/roof
rm -rf eleon/victor/roof_archive

echo ""
echo "=== Часть 3 выполнена ==="
ls -lR