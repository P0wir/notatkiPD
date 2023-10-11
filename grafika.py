import numpy as np
from PIL import Image

#1
def rysuj_ramke_w_obrazie(obraz, grub):
   tab_obraz = np.asarray(obraz) * 1
   h, w = tab_obraz.shape
   for i in range(grub):
      for j in range(w):
         tab_obraz[i][j] = 0
   for i in range(h - grub, h):
      for j in range(w):
         tab_obraz[i][j] = 0
   for i in range(h):
      for j in range(grub):
         tab_obraz[i][j] = 0
      for j in range(w - grub, w):
         tab_obraz[i][j] = 0
   tab = tab_obraz.astype(bool)  # zapisanie tablicy w typie bool (obrazy czarnobiałe)
   return Image.fromarray(tab)

inicjaly = Image.open("inicjaly.bmp")
inicjaly_ramka = rysuj_ramke_w_obrazie(inicjaly, 10)
inicjaly_ramka.save("ramka10.bmp", "BMP")
inicjaly_ramkax = rysuj_ramke_w_obrazie(inicjaly, 5)
inicjaly_ramkax.save("ramka5.bmp", "BMP")


def rysuj_ramke(w, h, grub):  # grub grubość ramki w pikselach
   t = (h, w)  # rozmiar tablicy
   tab = np.zeros(t, dtype=np.uint8)  # deklaracja tablicy wypełnionej zerami - czarna
   for i in range (h):
      tab[grub:h - grub, grub:w - grub] = 1
      tab[grub:w - grub, grub:h - grub] = 1
   tab1 = tab.astype(bool)
   # return tab * 255  # alternatywny sposób uzyskania tablicy obrazu czarnobiałego ale w trybie odcieni szarości
   return tab1


tab = rysuj_ramke(100, 50, 4)
print("typ danych tablicy", tab.dtype)
print("rozmiar wyrazu tablicy:", tab.itemsize)
im_ramka = Image.fromarray(tab)
im_ramka.show()
