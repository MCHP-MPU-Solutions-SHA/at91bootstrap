# Copyright (C) 2006 Microchip Technology Inc. and its subsidiaries
#
# SPDX-License-Identifier: MIT

# Makefile for AT91-Bootstrap drivers directory
# DIRS				+= drivers

DRIVERS:=
DRIVERS_SRC:=driver

COBJS-$(CONFIG_DEBUG)		+= $(DRIVERS_SRC)/debug.o

COBJS-$(CONFIG_CPU_HAS_SCKC)	+= $(DRIVERS_SRC)/at91_slowclk.o

COBJS-y				+= $(DRIVERS_SRC)/common.o
COBJS-$(CONFIG_PIO)		+= $(DRIVERS_SRC)/at91_pio.o
COBJS-$(CONFIG_PMC_COMMON)	+= $(DRIVERS_SRC)/pmc/clk-common.o
COBJS-$(CONFIG_PMC_PERIPH_CLK_SAM9X5)	+= $(DRIVERS_SRC)/pmc/periph-clk-sam9x5.o
COBJS-$(CONFIG_PMC_GENERIC_CLK)		+= $(DRIVERS_SRC)/pmc/generic-clk.o
COBJS-$(CONFIG_PMC_UTMI_CLK)		+= $(DRIVERS_SRC)/pmc/utmi-clk.o
COBJS-$(CONFIG_PMC_PLL_CLK)		+= $(DRIVERS_SRC)/pmc/pll-clk.o
COBJS-$(CONFIG_PMC_PLL_CLK_SAM9X60)	+= $(DRIVERS_SRC)/pmc/pll-clk-sam9x60.o
COBJS-$(CONFIG_PMC_MCK_CLK)		+= $(DRIVERS_SRC)/pmc/master-clk.o
COBJS-$(CONFIG_PMC_MCK_CLK_SAMA7G5)	+= $(DRIVERS_SRC)/pmc/master-clk-sama7g5.o
COBJS-$(CONFIG_PIT)		+= $(DRIVERS_SRC)/at91_pit.o
COBJS-$(CONFIG_PIT64B)		+= $(DRIVERS_SRC)/pit64b.o
COBJS-$(CONFIG_WDT)		+= $(DRIVERS_SRC)/at91_wdt.o
COBJS-$(CONFIG_WDT2)		+= $(DRIVERS_SRC)/at91_wdt2.o
COBJS-y				+= $(DRIVERS_SRC)/at91_usart.o
COBJS-y				+= $(DRIVERS_SRC)/at91_rstc.o
COBJS-y				+= $(DRIVERS_SRC)/shdwc.o

COBJS-$(CONFIG_CPU_HAS_L2CC)	+= $(DRIVERS_SRC)/lp310_l2cc.o

COBJS-$(CONFIG_SDRAM)		+= $(DRIVERS_SRC)/sdramc.o
COBJS-$(CONFIG_SDDRC)		+= $(DRIVERS_SRC)/sddrc.o
COBJS-$(CONFIG_DDRC)		+= $(DRIVERS_SRC)/ddramc.o
COBJS-$(CONFIG_UMCTL2)		+= $(DRIVERS_SRC)/umctl2.o
COBJS-$(CONFIG_PUBL)		+= $(DRIVERS_SRC)/publ.o

COBJS-$(CONFIG_AT91_MCI)	+= $(DRIVERS_SRC)/at91_mci.o
COBJS-$(CONFIG_SDHC)		+= $(DRIVERS_SRC)/sdhc.o

COBJS-$(CONFIG_SDCARD)		+= $(DRIVERS_SRC)/mci_media.o
COBJS-$(CONFIG_SDCARD)		+= $(DRIVERS_SRC)/sdcard.o

COBJS-$(CONFIG_NANDFLASH)	+= $(DRIVERS_SRC)/nandflash.o
COBJS-$(CONFIG_USE_PMECC)	+= $(DRIVERS_SRC)/pmecc.o
COBJS-$(CONFIG_ENABLE_SW_ECC) 	+= $(DRIVERS_SRC)/hamming.o

COBJS-$(CONFIG_SPI_FLASH)	+= $(DRIVERS_SRC)/spi_flash/spi_flash.o
COBJS-$(CONFIG_SPI_FLASH)	+= $(DRIVERS_SRC)/spi_flash/sfdp.o
COBJS-$(CONFIG_SPI_FLASH)	+= $(DRIVERS_SRC)/spi_flash/spi_nor.o
COBJS-$(CONFIG_SPI_FLASH)	+= $(DRIVERS_SRC)/spi_flash/spi_nor_ids.o

COBJS-$(CONFIG_SPI)		+= $(DRIVERS_SRC)/at91_spi.o
COBJS-$(CONFIG_SPI)		+= $(DRIVERS_SRC)/spi_flash.o
ifeq ($(CONFIG_QSPI), y)
COBJS-y				+= $(DRIVERS_SRC)/at91-qspi/qspi-common.o
ifeq ($(CONFIG_SAMA7G5), y)
COBJS-y				+= $(DRIVERS_SRC)/at91-qspi/qspi-sama7g5.o
else ifeq ($(CONFIG_SAMA7D65), y)
COBJS-y				+= $(DRIVERS_SRC)/at91-qspi/qspi-sama7g5.o
else ifeq ($(CONFIG_SAM9X7), y)
COBJS-y				+= $(DRIVERS_SRC)/at91-qspi/qspi-sama7g5.o
else
COBJS-y				+= $(DRIVERS_SRC)/at91-qspi/qspi.o
endif
endif
COBJS-$(CONFIG_DATAFLASH)	+= $(DRIVERS_SRC)/dataflash.o

COBJS-$(CONFIG_FLASH)		+= $(DRIVERS_SRC)/flash.o

ifeq ($(CONFIG_LOAD_SW), y)
COBJS-$(CONFIG_LOAD_LINUX)	+= $(DRIVERS_SRC)/load_kernel.o
COBJS-$(CONFIG_LOAD_ANDROID)	+= $(DRIVERS_SRC)/load_kernel.o
endif

COBJS-$(CONFIG_LOAD_ONE_WIRE)	+= $(DRIVERS_SRC)/ds24xx.o
COBJS-$(CONFIG_LOAD_EEPROM)	+= $(DRIVERS_SRC)/at24xx.o
COBJS-$(CONFIG_LOAD_HW_INFO)	+= $(DRIVERS_SRC)/board_hw_info.o
COBJS-y	+= $(DRIVERS_SRC)/board_hw_init.o
COBJS-$(CONFIG_LED_ON_BOARD)	+= $(DRIVERS_SRC)/led.o

COBJS-$(CONFIG_MATRIX)		+= $(DRIVERS_SRC)/matrix.o
COBJS-$(CONFIG_ENTER_NWD)	+= $(DRIVERS_SRC)/tz_utils.o
COBJS-$(CONFIG_ENTER_NWD)	+= $(DRIVERS_SRC)/svc_handler.o
COBJS-$(CONFIG_ENTER_NWD)	+= $(DRIVERS_SRC)/svc_mgr.o
COBJS-$(CONFIG_ENTER_NWD)	+= $(DRIVERS_SRC)/monitor/mon_init.o
COBJS-$(CONFIG_ENTER_NWD)	+= $(DRIVERS_SRC)/monitor/mon_switch.o
COBJS-$(CONFIG_ENTER_NWD)	+= $(DRIVERS_SRC)/monitor/mon_vectors.o

COBJS-$(CONFIG_LOAD_OPTEE)	+= $(DRIVERS_SRC)/optee/optee_switch.o
COBJS-$(CONFIG_LOAD_OPTEE)	+= $(DRIVERS_SRC)/optee/optee.o

COBJS-$(CONFIG_PM)	+= $(DRIVERS_SRC)/pm.o
COBJS-$(CONFIG_TWI)	+= $(DRIVERS_SRC)/at91_twi.o
COBJS-$(CONFIG_ACT8865)	+= $(DRIVERS_SRC)/act8865.o
COBJS-$(CONFIG_MACB)	+= $(DRIVERS_SRC)/macb.o
COBJS-$(CONFIG_MCP16502)+= $(DRIVERS_SRC)/mcp16502.o
COBJS-$(CONFIG_HDMI)	+= $(DRIVERS_SRC)/hdmi_SiI9022.o
COBJS-$(CONFIG_WM8904)	+= $(DRIVERS_SRC)/wm8904.o

COBJS-$(CONFIG_TZC400)  += $(DRIVERS_SRC)/tzc400.o

COBJS-$(CONFIG_AES)		+= $(DRIVERS_SRC)/at91_aes.o
COBJS-$(CONFIG_SECURE)		+= $(DRIVERS_SRC)/secure.o

COBJS-$(CONFIG_BACKUP_MODE)	+= $(DRIVERS_SRC)/backup.o

COBJS-$(CONFIG_REDIRECT_ALL_INTS_AIC)	+= $(DRIVERS_SRC)/at91_aicredir.o
COBJS-$(CONFIG_FLEXCOM)     += $(DRIVERS_SRC)/at91_flexcom.o

COBJS-$(CONFIG_SFRBU)		+= $(DRIVERS_SRC)/sfrbu.o

COBJS-$(CONFIG_CACHES)		+= $(DRIVERS_SRC)/l1cache.o
COBJS-$(CONFIG_MMU)		+= $(DRIVERS_SRC)/mmu.o
COBJS-$(CONFIG_XDMAC)	+= $(DRIVERS_SRC)/at91_xdmac.o
COBJS-$(CONFIG_FAST_BOOT)	+= $(DRIVERS_SRC)/fast_boot_init.o
