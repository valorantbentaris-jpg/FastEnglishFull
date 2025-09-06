# Makefile для Android проекта FastEnglish_FullProject
# ==============================

# Обозначаем, что цели не файлы
.PHONY: build clean

# ==============================
# Сборка APK
build:
	@echo "Сборка Debug APK..."
	./gradlew assembleDebug

# ==============================
# Очистка сборки
clean:
	@echo "Очистка проекта..."
	./gradlew clean
