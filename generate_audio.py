from gtts import gTTS
import os

words = ["hello", "world", "apple"]  # вставь сюда все свои слова

output_dir = "app/src/main/res/raw/"
os.makedirs(output_dir, exist_ok=True)

for word in words:
    tts = gTTS(word, lang='en')
    filename = os.path.join(output_dir, f"{word}.mp3")
    tts.save(filename)
    print(f"Saved {filename}")
