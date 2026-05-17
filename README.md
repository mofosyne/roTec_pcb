# roTec_pcb

| Front                               | Back                              |
|:------------------------------------|:----------------------------------|
| ![Front of PCB](./Circuit/documentation/front.png) | ![Back of PCB](./Circuit/documentation/back.png) |

[Release Files For PCB Revision 5.3 (All features except for GPS tested) (Recommended)](https://github.com/mofosyne/roTec_pcb/releases/tag/rev5.3)

<details>
<summary>Revision 5.4 (Though Hole Version)</summary>

| Front (Through Hole Version)        | Back (Through Hole Version)       |
|:------------------------------------|:----------------------------------|
| ![Front of PCB](./Circuit_Through_Hole/documentation/front.png) | ![Back of PCB](./Circuit_Through_Hole/documentation/back.png) |

[Release Files For PCB Revision 5.4 (Though Hole Version)](https://github.com/mofosyne/roTec_pcb/releases/tag/rev5.4)

</details>

RoTec is a low-cost nRF52 device with the form-factor of the Heltec v2, v3, & v4 devices compatible with [Meshtastic](https://meshtastic.org/)®, designed for use with rotary encoders as well as being easy to follow for less technical users.

The history of this design is that it is a fork of [Jacob's](https://github.com/jtljac) fork of the fakeTec.

This design is specifically based off of [Šimon Hořánek's](https://github.com/ShimonHoranek) [fakeTec V5 Rev. B](https://github.com/gargomoma/fakeTec_pcb/issues/24), licensed under [CERN-OHL-P-2.0](https://choosealicense.com/licenses/cern-ohl-p-2.0/).

**[For more meshtastic/meshcore/lora DIY nodes, do check this list out!](https://github.com/porkcube/meshtastic-diy-nodes)**

## Design Documentations (Through Hole Version)

![](./Circuit_Through_Hole/documentation/svg/fakeTecv5.svg)

* [Schematic as pdf](./Circuit_Through_Hole/documentation/roTec_schematic.pdf)
* [Schematic Bill Of Materials](./Circuit_Through_Hole/documentation/roTec_bom.csv)

* You may also want to manufacture [EC11 Rotary Encoder Horizontal Breakout Board](https://github.com/mofosyne/kicad_useful_pcbs/tree/main?tab=readme-ov-file#ec11-horizontal-breakout-board), so you can more easily wire the rotary encoder to the roTec via a JST-SH-4 cable.

This has the same parts list as the SMD version, but with a few parts subtracted.

## Design Documentations (Surface Mount Version)

![](./Circuit/documentation/svg/fakeTecv5.svg)

* [Schematic as pdf](./Circuit/documentation/roTec_schematic.pdf)
* [Schematic Bill Of Materials](./Circuit/documentation/roTec_bom.csv)

* You may also want to manufacture [EC11 Rotary Encoder Horizontal Breakout Board](https://github.com/mofosyne/kicad_useful_pcbs/tree/main?tab=readme-ov-file#ec11-horizontal-breakout-board), so you can more easily wire the rotary encoder to the roTec via a JST-SH-4 cable.

### Bill of materials

<details>
<summary>Bill of material. For full details and descriptions refer to the csv BOM above instead.</summary>

| Reference           | Value                      | Qty | Manufacturer                     | MPN                  | Package                                | Datasheet                                                                                                                                     | Manufacturer Parts Link (MPL)                                                                                                                                                              | Shopping                                                                                                                                         |
|---------------------|----------------------------|-----|----------------------------------|----------------------|----------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| J9                  | Molex PicoBlade 0532610271 | 1   | CJT(Changjiang Connectors)       | A1251WR-S-2P         | SMD,P=1.25mm,Surface Mount,Right Angle | [datasheet](https://www.molex.com/content/dam/molex/molex-dot-com/products/automated/en-us/salesdrawingpdf/532/53261/532610271_sd.pdf?inline) | [lcsc](https://www.lcsc.com/product-detail/C225111.html)                                                                                                                                   | [LCSC](https://www.lcsc.com/search?q=0532610271&s_z=n_0532610271)                                                                                |
| U1                  | XB8089D0 BMS               | 1   | XySemi                           | XB8089D0             | SOIC-8                                 | [datasheet](https://www.lcsc.com/datasheet/lcsc_datasheet_2410121637_XySemi-XB8089D0_C2760005.pdf                                           ) | [lcsc](https://www.lcsc.com/product-detail/C2760005.html?s_z=n_XySemi%2520XB8089D0)                                                                                                        | [LCSC](https://www.lcsc.com/search?q=XB8089D0&s_z=n_XB8089D0)                                                                                    |
| Q1,Q2,Q3            | n-chn mosfet               | 3   | Alpha & Omega Semiconductor Inc. | AO3400A              | SOT-23-3L                              | [datasheet](http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf                                                                                 ) | [lcsc](https://www.lcsc.com/product-detail/C20917.html?s_z=n_AO3400A)                                                                                                                      | [LCSC](https://www.lcsc.com/search?q=MOSFET%2520N-CH%2520SOT-23-3L&s_z=n_MOSFET%2520N-CH%2520SOT-23-3L)                                          |
| BZ1                 | Buzzer 5020                | 1   | HYDZ                             | HYG-5020A            | SMD,5x5mm                              | [datasheet](https://www.lcsc.com/datasheet/C7544810.pdf                                                                                     ) | [lcsc](https://www.lcsc.com/product-detail/C7544810.html?s_z=n_buzzer%25205020)                                                                                                            | [LCSC](https://www.lcsc.com/search?q=Buzzer_5020&s_z=n_Buzzer_5020)                                                                              |
| J38,J50             | JST-SH-4                   | 2   | JST Sales America Inc.           | SM04B-SRSS-TB        | SMD,P=1mm,Surface Mount,Right Angle    | [datasheet](https://www.jst-mfg.com/product/pdf/eng/eSH.pdf                                                                                 ) | [lcsc](https://www.lcsc.com/product-detail/C51940130.html?s_z=n_SM04B-SRSS-TB)                                                                                                             | [LCSC](https://www.lcsc.com/search?q=SM04B-SRSS-TB&s_z=n_SM04B-SRSS-TB)                                                                          |
| OLED1               | I2C OLED Module            | 1   |                                  |                      | Through Hole                           | [datasheet](https://cdn-shop.adafruit.com/datasheets/SSD1306.pdf                                                                            ) | [aliexpress](https://www.aliexpress.com/item/1005008738379315.html)                                                                                                                        | [aliexpress](https://www.aliexpress.com/w/wholesale-0.96-Inch-OLED-Display-Module.html)                                                          |
| U3                  | nice!nano v2               | 1   | Nice!                            | nice!nano v2         | nice!nano v2                           | [datasheet](https://nicekeyboards.com/docs/nice-nano/pinout-schematic                                                                       ) | [aliexpress](https://www.aliexpress.com/item/1005010222966695.html)                                                                                                                        | [aliexpress](https://www.aliexpress.com/w/wholesale-NRF52840-1%2525252d10PCS.html)                                                               |
| SW1                 | Reset                      | 1   | XUNPU                            | TS-1088R-02026       | SMD,4x3mm                              | [datasheet](https://www.lcsc.com/datasheet/C455280.pdf                                                                                      ) | [lcsc](https://www.lcsc.com/product-detail/C455280.html?s_z=n_TS-1088R-02026)                                                                                                              | [LCSC](https://www.lcsc.com/search?q=TS-1088R-02026&s_z=n_TS-1088R-02026)                                                                        |
| SW2                 | SW_Push                    | 1   | XUNPU                            | TS-1088R-02026       | SMD,4x3mm                              | [datasheet](https://www.lcsc.com/datasheet/C455280.pdf                                                                                      ) | [lcsc](https://www.lcsc.com/product-detail/C455280.html?s_z=n_TS-1088R-02026)                                                                                                              | [LCSC](https://www.lcsc.com/search?q=TS-1088R-02026&s_z=n_TS-1088R-02026)                                                                        |
| R1,R2,R3,R9,R10,R11 | 10k                        | 6   |                                  |                      | 0805                                   |                                                                                                                                               |                                                                                                                                                                                            | [LCSC](https://www.lcsc.com/search?q=10K%25200805&s_z=n_10K%25200805)                                                                            |
| R4                  | 680K                       | 1   |                                  |                      | 0805                                   |                                                                                                                                               |                                                                                                                                                                                            | [LCSC](https://www.lcsc.com/search?q=680K%25200805&s_z=n_680K%25200805)                                                                          |
| R5                  | 1.0M                       | 1   |                                  |                      | 0805                                   |                                                                                                                                               |                                                                                                                                                                                            | [LCSC](https://www.lcsc.com/search?q=1M%25200805&s_z=n_1M%25200805)                                                                              |
| R6                  | 1k                         | 1   |                                  |                      | 0805                                   |                                                                                                                                               |                                                                                                                                                                                            | [LCSC](https://www.lcsc.com/search?q=1k%25200805&s_z=n_1k%25200805)                                                                              |
| SW3                 | RotaryEncoder_Switch       | 1   | Same Sky (Formerly CUI Devices)  | ACZ11BR1E-15KQA1-12C | EC11                                   | [datasheet](https://www.cuidevices.com/product/resource/acz11.pdf                                                                           ) | [aliexpress](https://www.aliexpress.com/item/1005010398201852.html) or [digikey](https://www.digikey.com.au/en/products/detail/same-sky-formerly-cui-devices/ACZ11BR1E-15KQA1-12C/1923334) | [aliexpress](https://www.aliexpress.com/w/wholesale-rotary-encoder-EC11-horizontal.html) or [digikey](https://www.digikey.com.au/short/7v5m7j9j) |
| U2                  | HT-RA62                    | 1   | Heltec                           | HT-RA62              | HT-RA62                                | [datasheet](https://resource.heltec.cn/download/HT-RA62/HT-RA62(Rev1.1).pdf                                                                 ) | [aliexpress](https://www.aliexpress.com/item/1005005543917617.html)                                                                                                                        | [aliexpress](https://www.aliexpress.com/w/wholesale-HT%2525252dRA62.html)                                                                        |
| C1,C2               | 100nF                      | 2   |                                  |                      | 0805                                   |                                                                                                                                               |                                                                                                                                                                                            | [LCSC](https://www.lcsc.com/search?q=100nF%25200805&s_z=n_100nF%25200805)                                                                        |
| M1                  | ERM Motor                  | 1   | Seeed Technology Co., Ltd        | 316040001            | Wire Leads                             | [datasheet](https://mm.digikey.com/Volume0/opasdata/d220001/medias/docus/2234/1020-15-003-001_Spec.pdf                                      ) | [digikey](https://www.digikey.com.au/en/products/detail/seeed-technology-co-ltd/316040001/5487672)                                                                                         | [aliexpress](https://www.digikey.com.au/short/332zpfdb)                                                                                          |

Purchase Tips:
* You can often buy SMD resistor kits in booklets from most places like amazon or aliexpress.
* Both nice!nano and promicro versions are supported
* You can swap the AO3400A n-channel mosfet with other higher current mosfet like SI2312 as long as the pins and packaqe size matches.
* Vibrations motors can be purchased in bulk pretty cheaply in aliexpress, ebay, amazon, etc...
* XB8089D0 BMS can be skipped if your battery have integrated battery protection already
* JST-SH-4 is optional if you want to solder the rotary encoder, gps, or i2c sensors directly onto the solder pads provided on the board instead
* For GPS support you can buy either ATGM336H or GY-GPS6MV2 modules
* Any OLED screen can be used. Pick one that is designed for your case. Often it's an SSD1306 controller based OLED screen.
* Any lora radios seen inside this [reference schematic](https://github.com/meshtastic/firmware/blob/develop/variants/nrf52840/diy/nrf52_promicro_diy_tcxo/Schematic_Pro-micro_Pinouts_2025-12-04.pdf) that fits the footprint and pinout is supported
  - Just like the faketecs you can also use RA-01SH.
* This design supports 3 different battery connectors types
  - Molex Picoblade 2-Pin
    - MPC: Molex, MPN: 0532610271
    - MPC: CJT (Changjiang Connectors), MPN: A1251WR-S-2P
    - Pitch: 1.25mm
    - Used By: HelTec LoRa 32
  - JST PH 2-Pin
    - MPN: S2B-PH-SM4-TB
    - Pitch: 2.00mm 
    - Used By: RAK19007 WisBlock
  - Direct wiring. 
    - e.g. JST-PH-2 but as an external wire like this [aliexpress product](https://www.aliexpress.com/item/1005002564191148.html)

</details>

## Setting Up Device

### Configure

Included in this repository is `roTec_module_config.yaml` which when you run below command will configure the buzzer, vibration motor and encoder.

```
PORT=/dev/ttyACM0 # Set to the serial port of the roTec after flashing
meshtastic --port $PORT --info
meshtastic --port $PORT --configure roTec_module_config.yaml
meshtastic --port $PORT --reboot
```

Alternatively you could manually use the web interface to set the settings using <client.meshtastic.org> as shown below
(No GPS settings it's already enabled by default if the module is installed).

#### Rotary Encoder Settings:

| Settings                                          | Value   |
|---------------------------------------------------|---------|
| module_config.cannedMessage.allowInputSource      | rotEnc1 |
| module_config.cannedMessage.enabled               | true    |
| module_config.cannedMessage.inputbrokerEventCcw   | RIGHT   |
| module_config.cannedMessage.inputbrokerEventCw    | LEFT    |
| module_config.cannedMessage.inputbrokerEventPress | SELECT  |
| module_config.cannedMessage.inputbrokerPinA       | 33      |
| module_config.cannedMessage.inputbrokerPinB       | 34      |
| module_config.cannedMessage.inputbrokerPinPress   | 39      |
| module_config.cannedMessage.rotary1Enabled        | true    |

#### Vibration Notification Settings:

| Settings                                             | Value |
|------------------------------------------------------|-------|
| module_config.externalNotification.enabled           | true  |
| module_config.externalNotification.alertBell         | true  |
| module_config.externalNotification.alertBellVibra    | true  |
| module_config.externalNotification.alertMessageVibra | true  |
| module_config.externalNotification.outputVibra       | 8     |

#### Buzzer Settings:

**Note you have to override buzzer gpio in config device page**

| Settings                                              | Value                                                                                                     |
|-------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| config.device.buzzerGpio                              | 6                                                                                                         |
| module_config.externalNotification.enabled            | true                                                                                                      |
| module_config.externalNotification.alertBell          | true                                                                                                      |
| module_config.externalNotification.alertBellBuzzer    | true                                                                                                      |
| module_config.externalNotification.alertMessageBuzzer | true                                                                                                      |
| module_config.externalNotification.outputBuzzer       | 6                                                                                                         |
| module_config.externalNotification.usePwm             | true                                                                                                      |
| ringtone                                              | `24:d=32,o=5,b=565:f6,p,f6,4p,p,f6,p,f6,2p,p,b6,p,b6,p,b6,p,b6,p,b,p,b,p,b,p,b,p,b,p,b,p,b,p,b,1p.,2p.,p` |

## Features
- Small size based on Heltec v3: You can use the same cases!
- Lora with Heltec's HT-RA62
- Uses a [n!cenano](https://nicekeyboards.com/nice-nano/) or 
  [NRF52840 ProMicro](https://github.com/joric/nrfmicro/wiki/Alternatives#supermini-nrf52840l)
- BMS For low voltage cutout to prevent LiPo Overdraining
- Battery level sensing
- JST PH2.0mm connector for batteries
- I2C side ports ready to connect an OLED SSD1306 screen.
- Pads for connecting an encoder for canned messages
- Pads for connecting a serial GPS module
- MOSFETs for switching high current components
  - Using a solder pad jumper, MOSFET 1 can chose between the GPS module ground to enable power saving the GPS module, 
    or a regular pad like MOSFETs 2 & 3.
- 2mm mounting holes

## Modifications from fakeTec V5 Rev. B
- Cleaned up schematic
  - Changed Pins representing sides of MCUs to symbols fully representing said MCU
  - Changed labels to my preferred naming scheme
  - Updated/Cleaned up symbol fields to make each component easier to find
    - MPN: Manufacturer Parts Number
    - MPD: Manufacturer Parts Description
    - MPL: Manufacturer Parts Link
    - Shopping: Link to search pages used to locate parts. Useful for finding alternatives.
- Setup netclasses
- Shifted pads `P1.01`, `P1.02`, and `P1.07` to where I'm pretty sure they're supposed to be
- Removed jumper for BMS
  - I will always install a BMS
- Removed jumper for GPS/FET1 Drain to FET1
  - Only one will be connected at a time, probably no difference if this is permanently connected to both
- Switched mosfets to AO3400A
  - I already have these and they're a drop in replacement
- Changed all resistors and Capacitors to 805 sized
  - I already have all the resistors in this size
- Added pullup resistors to rotary encoder pads
  - These probably support internal pullups, but just to be safe
- Added ground pad to rotary encoder pads
- Changed battery connector to a JST PH-2.0mm
  - Struggled to find JST 1.25 connectors
  - PH-2.0mm are also apparently more reliable
- Removed lots of silkscreen text
  - Don't need values or component names, just component references
  - Most of it was overlapping
- Moved BMS to side
  - Keeps it out the way of the battery connector
- Added a lot more stitching between front and back ground planes
- Removed vias from on top of silkscreen and off of pads
- Attempted to reduce layer crossings
- Added test pads for the nice!nano/promicro to help users to figure out if the pads is correctly soldered down.
- Added connectors recommended by [this hackaday article ](https://hackaday.com/2022/05/04/the-connector-zoo-i2c-ecosystems) for easy attachment for i2c devices. Pads also exposed in case you want to solder the i2c device down.
- Added buzzer pads so that buzzer can be included in a more compact manner.
- Added pads to expose all the GPIO pins in case users want to use the GPIO for other purpose.
- Added additional marking to indicate resistance and capacitor values
- Added BMS bypass in case users are using batteries with integrated protection already

# Variants

(aka firmware files)

| Version      | Lora Modules                     | Official Repo link                                                                                                                                          | Unofficial Repo link                                                                                                                                                                |
|:-------------|:---------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| With TCXO    | EByte E22/E220-xxxM-22S/HT-RA62  | <a href="https://github.com/meshtastic/firmware/tree/master/variants/nrf52840/diy/nrf52_promicro_diy_tcxo" target="_blank">Official repo - With TCXO</a>    | <a href="https://github.com/mrekin/MeshtasticCustomBoards/tree/main/firmware/variants/nrf52840/diy/promicro_diy_m" target="_blank">With TCXO</a> @mrekin/MeshtasticCustomBoards     |
| Without TCXO | EByte E22/E220-xxxMM-22S/RA-01SH | <a href="https://github.com/meshtastic/firmware/tree/master/variants/nrf52840/diy/nrf52_promicro_diy_xtal" target="_blank">Official repo - Without TCXO</a> | <a href="https://github.com/mrekin/MeshtasticCustomBoards/tree/main/firmware/variants/nrf52840/diy/promicro_diy_mm" target="_blank">Without TCXO</a> @mrekin/MeshtasticCustomBoards |

> If you don't want to build your own image use <a href="https://flasher.meshtastic.org/" target="_blank">the official web flasher</a>. Select the `NRF52 Pro-micro DIY` under `Community Supported Devices` as your target device.

# Supported Cases

Refer to [this page](./Cases/README.md) for details on supported cases that this design will fit into.

# About Meshtastic
[Meshtastic](https://meshtastic.org/)® is a registered trademark of Meshtastic LLC. Meshtastic software components are released under various licenses, see github for details.

# Disclaimer
No warranty is provided.
You use it at your own risk and take the responsibility upon yourself.
