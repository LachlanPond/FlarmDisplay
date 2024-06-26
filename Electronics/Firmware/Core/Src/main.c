/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2022 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "flarm.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
struct LEDRegister LEDreg;
struct errorRegister errorReg;
enum errors errors;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */
void displayLEDBuffer(struct LEDRegister *reg);
void displayClockPulse();
void displayLatch();
void displayErrors();
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
 * @brief  The application entry point.
 * @retval int
 */
int main(void) {
	/* USER CODE BEGIN 1 */

	/* USER CODE END 1 */

	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_USART1_UART_Init();
	MX_USART2_UART_Init();
	/* USER CODE BEGIN 2 */

	uint8_t startMsg[] = "Starting...";
	HAL_UART_Transmit(&huart1, startMsg, sizeof(startMsg), 10);

	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
	while (1) {
		//processPFLAE("$PFLAE,A,0,12,Supa message*50", &errorReg);
		LEDreg.R01 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R02 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R03 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R04 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R05 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R06 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R07 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R08 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R09 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R10 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R11 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.R12 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y01 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y02 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y03 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y04 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y05 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y06 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y07 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y08 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y09 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y10 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y11 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.Y12 = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.GPS = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.RX = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.TX = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.LL = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.L = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.M = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.H = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		LEDreg.HH = 1;
		serializeLEDRegister(&LEDreg);
		displayLEDBuffer(&LEDreg);
		clearLEDRegister(&LEDreg);
		HAL_Delay(100);
		/* USER CODE END WHILE */

		/* USER CODE BEGIN 3 */
	}
	/* USER CODE END 3 */
}

/**
 * @brief System Clock Configuration
 * @retval None
 */
void SystemClock_Config(void) {
	RCC_OscInitTypeDef RCC_OscInitStruct = { 0 };
	RCC_ClkInitTypeDef RCC_ClkInitStruct = { 0 };
	RCC_PeriphCLKInitTypeDef PeriphClkInit = { 0 };

	/** Initializes the RCC Oscillators according to the specified parameters
	 * in the RCC_OscInitTypeDef structure.
	 */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
	RCC_OscInitStruct.HSEState = RCC_HSE_ON;
	RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
	RCC_OscInitStruct.HSIState = RCC_HSI_ON;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
	RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL4;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
		Error_Handler();
	}

	/** Initializes the CPU, AHB and APB buses clocks
	 */
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
			| RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK) {
		Error_Handler();
	}
	PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1;
	PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_PCLK1;
	if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK) {
		Error_Handler();
	}
}

/**
 * @brief USART1 Initialization Function
 * @param None
 * @retval None
 */
static void MX_USART1_UART_Init(void) {

	/* USER CODE BEGIN USART1_Init 0 */

	/* USER CODE END USART1_Init 0 */

	/* USER CODE BEGIN USART1_Init 1 */

	/* USER CODE END USART1_Init 1 */
	huart1.Instance = USART1;
	huart1.Init.BaudRate = 115200;
	huart1.Init.WordLength = UART_WORDLENGTH_8B;
	huart1.Init.StopBits = UART_STOPBITS_1;
	huart1.Init.Parity = UART_PARITY_NONE;
	huart1.Init.Mode = UART_MODE_TX_RX;
	huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	huart1.Init.OverSampling = UART_OVERSAMPLING_16;
	huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
	huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
	if (HAL_UART_Init(&huart1) != HAL_OK) {
		Error_Handler();
	}
	/* USER CODE BEGIN USART1_Init 2 */

	/* USER CODE END USART1_Init 2 */

}

/**
 * @brief USART2 Initialization Function
 * @param None
 * @retval None
 */
static void MX_USART2_UART_Init(void) {

	/* USER CODE BEGIN USART2_Init 0 */

	/* USER CODE END USART2_Init 0 */

	/* USER CODE BEGIN USART2_Init 1 */

	/* USER CODE END USART2_Init 1 */
	huart2.Instance = USART2;
	huart2.Init.BaudRate = 115200;
	huart2.Init.WordLength = UART_WORDLENGTH_8B;
	huart2.Init.StopBits = UART_STOPBITS_1;
	huart2.Init.Parity = UART_PARITY_NONE;
	huart2.Init.Mode = UART_MODE_TX_RX;
	huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	huart2.Init.OverSampling = UART_OVERSAMPLING_16;
	huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
	huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
	if (HAL_UART_Init(&huart2) != HAL_OK) {
		Error_Handler();
	}
	/* USER CODE BEGIN USART2_Init 2 */

	/* USER CODE END USART2_Init 2 */

}

/**
 * @brief GPIO Initialization Function
 * @param None
 * @retval None
 */
static void MX_GPIO_Init(void) {
	GPIO_InitTypeDef GPIO_InitStruct = { 0 };

	/* GPIO Ports Clock Enable */
	__HAL_RCC_GPIOF_CLK_ENABLE();
	__HAL_RCC_GPIOA_CLK_ENABLE();
	__HAL_RCC_GPIOB_CLK_ENABLE();

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(GPIOA, SIN_Pin | SCLK_Pin | LAT_Pin | BLANK_Pin,
			GPIO_PIN_RESET);

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(BUZZER_GPIO_Port, BUZZER_Pin, GPIO_PIN_RESET);

	/*Configure GPIO pins : SIN_Pin SCLK_Pin LAT_Pin BLANK_Pin */
	GPIO_InitStruct.Pin = SIN_Pin | SCLK_Pin | LAT_Pin | BLANK_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	/*Configure GPIO pin : BUZZER_Pin */
	GPIO_InitStruct.Pin = BUZZER_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(BUZZER_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

void displayLEDBuffer(struct LEDRegister *reg) {
	for (int i = 0; i < LED_BUFFER_SIZE; i++) {
		if (reg->Buffer >> i & 1) {
			HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_SET);
		} else {
			HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_RESET);
		}
		displayClockPulse();
	}
	displayLatch();
}

void displayClockPulse() {
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_RESET);
}

void displayLatch() {
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6, GPIO_PIN_RESET);
}

void displayErrors() {
	if (FIRMWAREEXPIRED) {

	}
}

/* USER CODE END 4 */

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void Error_Handler(void) {
	/* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1) {
	}
	/* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
