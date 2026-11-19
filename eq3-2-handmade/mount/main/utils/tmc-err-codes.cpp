#include "tmc-err-codes.h"

const char *tmc_err_to_name(esp_err_t err) {
    switch (err) {
        case ESP_ERR_TMC_NO_RESPONSE: return "ESP_ERR_TMC_NO_RESPONSE";
        case ESP_ERR_TMC_WRONG_CHIP:  return "ESP_ERR_TMC_WRONG_CHIP";
        case ESP_ERR_TMC_ENN_LOW:     return "ESP_ERR_TMC_ENN_LOW";
        case ESP_ERR_TMC_WRITE_LOST:  return "ESP_ERR_TMC_WRITE_LOST";
        case ESP_ERR_TMC_RA_NOT_CONFIGURED:  return "ESP_ERR_TMC_RA_NOT_CONFIGURED";
        case ESP_ERR_TMC_DEC_NOT_CONFIGURED: return "ESP_ERR_TMC_DEC_NOT_CONFIGURED";
        case ESP_ERR_TMC_INVALID_CRC: return "ESP_ERR_TMC_INVALID_CRC";
        case ESP_ERR_TMC_VERIFY_FAILED: return "ESP_ERR_TMC_VERIFY_FAILED";
        default:                      return esp_err_to_name(err);
    }
}
