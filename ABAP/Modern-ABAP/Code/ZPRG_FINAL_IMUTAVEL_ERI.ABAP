
" DATA -> value can be chanced
DATA(LV_AMOUNT) = '100'.

lv_amount = 200. " Can be chanced

" FINAL -> value stays unchanced
FINAL(LV_TAX_RATE) = '18.0' 

LV_TAX_RATE = '20.00'. " Cannot be chanced
