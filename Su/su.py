from selenium.webdriver.common.keys import Keys
from multiprocessing import Process
from pydub.playback import play
import speech_recognition as sr
from selenium import webdriver
from pydub import AudioSegment
import os, sqlite3, datetime, time, socket
from termcolor import colored
import subprocess, sys, psutil
from bs4 import BeautifulSoup
from urllib.request import urlopen, Request


theproc = subprocess.Popen([sys.executable, "spectrum.py"])
conn = sqlite3.connect('su.db')

db = conn.cursor()
eylemler = [['Spotify', 'spotify'], ['hava durumu', 'curl wttr.in'], ['Bilgisayarı kapat', 'poweroff']]
aylar = [['ocak', 1], ['şubat', 2], ['mart', 3], ['nisan', 4], ['mayıs', 5], ['haziran', 6], ['temmuz', 7], ['ağustos', 8], ['eylül', 9], ['ekim', 10], ['kasım', 11], ['aralık', 12]]
song = AudioSegment.from_wav("su.wav")

def replaceMultiple(mainString, toBeReplaces, newString):

    for elem in toBeReplaces :

        if elem in mainString :

            mainString = mainString.replace(elem, newString)

    return  mainString

def haraket():
    start_time = time.time()
    while True:
        time.sleep(1)
        if time.time() - start_time > 3600:
            start_time = time.time()
            os.system('notify-send Su "Hey! Biraz haraket etmelisin, 1 saatir kıpırdamadın."')


def hatirlatici_kontrol():
     while True:
         now = datetime.datetime.now()
         dt = datetime.datetime.today()
         time.sleep(1)
         db.execute("SELECT * FROM hatirlaticilar")
         veriler = db.fetchall()
         for veri in veriler:
             if str(dt.day) == str(veri[1].split('-')[-1]):
                 if str(now.hour) + '.' + str(now.minute) == veri[1].split('-')[0]:
                     os.system('notify-send "Hatırlatıcı ' + veri[1]+'" ' + veri[0])
                     print(veri[1])
                     db.execute('DELETE FROM hatirlaticilar WHERE zaman = "'+veri[1]+'"')
                     conn.commit()


haraket_zamanlayici = Process(target=haraket)
haraket_zamanlayici.start()

h_kontrol = Process(target=hatirlatici_kontrol)
h_kontrol.start()
os.system("clear")
print("Dinliyorum!")
r = sr.Recognizer()
with sr.Microphone() as source:
    play(song)
    audio = r.listen(source)


try:
    os.system('clear')
    istek = r.recognize_google(audio, language="tr-TR")
    print(istek)
except:
    pass


if 'web' in istek:
    s = replaceMultiple(istek, ['hey', 'su', 'bana', 'benim', 'onun', 'için', 'lütfen', 'açarmısın', 'aç', 'bulur musun', 'bul', 'yap', 'bakar mısın', 'yapar mısın', 'gösterir misin', 'web', 'de','den', "'", 'arat'] , '')
    driver = webdriver.Chrome(executable_path=r'./chromedriver')
    driver.set_page_load_timeout("10")
    driver.get("https://yandex.com.tr/search/?lr=21033&text="+str(s))
    driver.maximize_window()
    que = driver.find_element_by_name("q")
    que.send_keys(istek.split('web')[0])
    time.sleep(1)
    que.send_keys(Keys.RETURN)


for eylem in eylemler:
    if istek == eylem[0]:
        os.system(eylem[1])


if 'hatırlatıcı' in istek:
    dt = datetime.datetime.today()
    eylem = istek.replace('su', '').split('için')[0]
    zaman = istek.split('saat')[1].split()[0:2][0]
    zaman = str(zaman) + '-' +str(dt.day)
    print(zaman)
    if 'yarın' in istek:
        zaman = str(zaman) + '-' +str(dt.day+1)
    db.execute("insert into hatirlaticilar (eylem, zaman) values (?, ?)",(eylem,zaman))
    conn.commit()
    conn.close()

if 'internet' in istek:
    s = ([l for l in ([ip for ip in socket.gethostbyname_ex(socket.gethostname())[2] if not ip.startswith("127.")][:1], [[(s.connect(('8.8.8.8', 53)), s.getsockname()[0], s.close()) for s in [socket.socket(socket.AF_INET, socket.SOCK_DGRAM)]][0][1]]) if l][0][0])
    print (colored('local ip ', 'blue') + str(s))
    w = os.popen('curl -s https://ipinfo.io/ip')
    w = w.read().strip()
    print (colored('Dış ip ' , 'blue') +str(w))
    print (colored('SPEED TEST BAŞLATILIYOR !', 'blue'))
    os.system("sleep 1")
    os.system("speedtest")
    print('\x1b[6;30;42m' + 'Success!' + '\x1b[0m')

if 'işlemci' in istek:
    cores = []
    islemciler = psutil.sensors_temperatures()['coretemp']
    for islemci in islemciler:
        cores.append(islemci[1])
    print(cores[0])

if 'araba' in istek:
    alis = ""
    veris = ""
    db.execute("SELECT * FROM iata_airport_codes")
    veriler = db.fetchall()
    for veri in veriler:
        for parca in istek.split():
            if veri[0].split(',')[0].lower() == parca.lower():
                sehir = veri[1]
                print(sehir)
    alis_lock = False
    for parca in istek.split():
        now = datetime.datetime.now()
        if parca.isdigit() == True:
            if alis_lock == False:
                alis = alis + parca
            else:
                veris = veris + parca
        for ay in aylar:
            if ay[0] in parca.lower():
                if alis_lock == False:
                    alis = str(now.year) + '-' + str(ay[1]) + '-' + alis
                    alis_lock = True
                else:
                    veris = str(now.year) + '-' + str(ay[1]) + '-' + veris

    if int(alis.split('-')[-1]) > int(veris.split('-')[-1]):
        yeni_alis = veris
        yeni_veris = alis
        print("Alınacak tarih: ", yeni_alis)
        print("Verilecek Tarih: ", yeni_veris)
        browser = webdriver.Chrome(executable_path="./chromedriver")
        url = "https://www.kayak.com.tr/cars/"+str(sehir)+"/"+str(yeni_alis)+"/"+str(yeni_veris)+"?sort=rank_a"
        print(url)
        browser.get(url)

    else:
        print("Alınacak tarih: ", alis)
        print("Verilecek Tarih", veris)
        browser = webdriver.Chrome(executable_path="./chromedriver")
        url = "https://www.kayak.com.tr/cars/"+str(sehir)+"/"+str(alis)+"/"+str(veris)+"?sort=rank_a"
        print(url)
        browser.get(url)

if 'bilet' in istek:
    for parca in istek.split():
        if parca.isdigit() == True:
            day = parca
        for ay in aylar:
            if ay[0] in parca.lower():
                k_ay = ay[1]
    now = datetime.datetime.now()
    full_time = str(now.year) + '-' + str(k_ay) + '-' + str(day)
    print(full_time)

    db.execute("SELECT * FROM iata_airport_codes")
    veriler = db.fetchall()
    for veri in veriler:
        for parca in istek.replace("'a", '').replace("'e", '').replace("'ye", '').replace("'ya", '').split():
            if veri[0].split(',')[0].lower() == parca.lower():
                sehir = veri[1]

    lokasyon = os.popen("curl -s https://ipinfo.io/city")
    lokasyon = lokasyon.read().strip()

    for veri in veriler:
        if veri[0].split(',')[0].lower() == lokasyon.lower():
            lokasyon = veri[1]

    url = "https://www.kayak.com.tr/flights/"+str(lokasyon)+"-"+str(sehir)+"/"+str(full_time)+"?sort=bestflight_a"
    print(url)

if 'tarif' in istek:
    try:
        from googlesearch import search
    except ImportError:
        print("No module named 'google' found")

    filtrelenmis = replaceMultiple(istek, ['hey', 'su', 'bana', 'benim', 'onun', 'için', 'lütfen', 'açarmısın', 'aç', 'bulur musun', 'bul', 'yap', 'bakar mısın', 'yapar mısın', 'gösterir misin'] , '')
    for j in search(filtrelenmis, tld="co.in", num=10, stop=1, pause=2):
        browser = webdriver.Chrome(executable_path="./chromedriver")
        browser.get(j)

if 'al' in istek:
    filtrelenmis = replaceMultiple(istek, ['hey', 'su', 'bana', 'benim', 'için', 'lütfen', 'not', 'yaparmısın', 'tutar', 'mısın', '?', 'tut' ] , '')

    datetime.datetime.now()
    full_time    = datetime.datetime.now()
    db.execute("insert into notlar (tarih, veri) values (?, ?)",(full_time, filtrelenmis))
    conn.commit()
    conn.close()

if 'oku' in istek:
    not_havuzu = ""
    son_kod_parcasi = """
    }, 100);
        count = 3;
    }
    checkCount();
    });"""

    conn = sqlite3.connect('su.db')

    db = conn.cursor()

    db.execute("SELECT * FROM notlar")
    notlar = db.fetchall()
    for not_parcasi in notlar:
        not_kodu = "addNewNote('', '"+str(not_parcasi[1].strip())+"' );\n"
        not_havuzu += not_kodu

    not_havuzu = not_havuzu + son_kod_parcasi

    js_kaynak_txt = open("./web-notlar/js-kaynak.txt", 'r')
    not_havuzu = js_kaynak_txt.read() + not_havuzu
    print(not_havuzu)
    notlar_txt = open("./web-notlar/script.js", 'w')
    notlar_txt.write(not_havuzu)
    notlar_txt.close()
if 'WhatsApp' in istek:
        s = replaceMultiple(istek, ['hey', 'su', 'bana', 'benim', 'onun', 'için', 'lütfen', 'açarmısın', 'aç', 'bulur musun', 'bul', 'yap', 'bakar mısın', 'yapar mısın', 'gösterir misin'] , '')
        driver = webdriver.Chrome(executable_path=r'./chromedriver')
        driver.set_page_load_timeout("10")
        driver.get("https://web.whatsapp.com/")
        driver.maximize_window()
        que = driver.find_element_by_name("q")
        que.send_keys(istek.split('WhatsApp')[0])
        time.sleep(1)
        que.send_keys(Keys.RETURN)
if 'YouTube' in istek:
        s = replaceMultiple(istek, ['hey', 'su', 'bana', 'benim', 'onun', 'için', 'lütfen', 'açarmısın', 'aç', 'bulur musun', 'bul', 'yap', 'bakar mısın', 'yapar mısın', 'gösterir misin', 'YouTube', 'dan', "'", 'arat', 'da'] , '')
        driver = webdriver.Chrome(executable_path=r'./chromedriver')
        driver.set_page_load_timeout("10")
        driver.get("https://www.youtube.com/results?search_query="+str(s))
        driver.maximize_window()
        que = driver.find_element_by_name("q")
        que.send_keys(istek.split('WhatsApp')[0])
        time.sleep(1)
        que.send_keys(Keys.RETURN)
