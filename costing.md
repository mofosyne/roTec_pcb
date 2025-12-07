# Costings

This is just mostly for figuring out an estimate of cost for this device. It should be in USD.

(FYI was using [this plugin for codium/vscode](https://github.com/mofosyne/vscode-quickcalc) to calculate below costings)

```calc
# 10PCS 503450/523450 3.7V 1000mAh Polymer Lithium Rechargeable Battery Li-ion Battery JST PH2.0- 2P for GPS Smart Phone DVD MP5 
# https://www.aliexpress.com/item/1005005848216887.html
battery = 2.605

# https://www.lcsc.com/product-detail/C455280.html
# SWITCH TACTILE SPST SMD
# XUNPU TS-1088R-02026
button = 0.0373

# https://www.aliexpress.com/item/1005007290608135.html
# EC11 Rotary Encoder
encoder = 0.942

# https://www.aliexpress.com/item/1005010222966695.html
# NRF52840 1-10PCS Pro NRF52840 Development Board Compatible with Nice!Nano V2.0 Bluetooth Charging Management Pro Micro NRF52840
nicenano = 6.199

# https://www.aliexpress.com/item/1005009534289559.html
# Heltec HT-RA62 LoRa Module SX1262
radio = 61.99 / 10
 = 6.199

# JST JST-PH-2 S2B-PH-SM4-TB
battery_connector = 0.1437

# JST JST-SH-4 XY-SM04B-SRSS-TB
i2c_port = 0.046

# AO3400A N-Chn mosfet (SI2312 exist... but is more expensive but can handle higher current)
AO3400A = 0.058

# https://www.lcsc.com/product-detail/C7544810.html
# Buzzer 5020
buzzer = 0.2974

# Batter Protection XB8089D0
XB8089D0 = 0.1223

# capacitors & resistors (Assume... it's all jelly parts... guessed)
passives = 3

total_parts_est = battery + button * 2 + encoder + nicenano + radio + battery_connector + i2c_port + AO3400A + buzzer + XB8089D0 + passives
          = 19.686999999999994

# jlc pcb cost
pcb_cost = (26.20)/30
            = 0.8733333333333333

# 3d printed case (guessed)
case_cost = 2

total_est = total_parts_est + pcb_cost + case_cost
   = 22.56033333333333
```
