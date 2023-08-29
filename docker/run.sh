#!/bin/sh

# build docker container
# docker build -t translation-backend/api:2.0.2-cuda11.3 -f api/cuda11.3.dockerfile --build-arg 'EASYNMT_MODEL=m2m_100_1.2B' api/

# run container
docker run --rm -it -p 24080:80 translation-backend/api:2.0.2-cuda11.3

# test entrypoints
# /translate
# curl 'http://localhost:24080/translate?target_lang=en&text=Hallo%20Welt'
# python -c "import requests; r = requests.post('http://localhost:24080/translate', json={'target_lang': 'en', 'text': ['Hallo Welt', 'Es werden alle Texte übersetzt', '你好，反腐败没有用']}); print(r.json())"

# /language_detection
# curl 'http://localhost:24080/language_detection?text=Hallo%20Welt'
# python -c "import requests; r = requests.post('http://localhost:24080/language_detection', json={'text': ['Hallo Welt', 'Es werden alle Texte übersetzt', '你好，反腐败没有用']}); print(r.json())"

# /get_languages
# curl 'http://localhost:24080/get_languages'
# python -c "import requests; r = requests.get('http://localhost:24080/get_languages'); print(r.json())"
