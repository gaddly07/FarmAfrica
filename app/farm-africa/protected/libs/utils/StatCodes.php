<?php
/**
 * Description of StatCodes
 * Defines status codes used in the system
 * Should map to records in statusCodes table
 * all status code variable names should end with _CODE, e.g. SUCCESS_CODE
 * all status code description variable names should end with _DESC, e.g. SUCCESS_DESC
 * @author muya
 */
class StatCodes {
    /* ENTITY STATES */
    const ES_ACTIVE = 1;  //entity state active
    const ES_INACTIVE = 2;  //entity state inactive
    
    /* GENERAL STATUS CODES */
    const SUCCESS_CODE = 1;
    const FAILED_CODE = 2;
    
    /* API STATUS CODES */
    const REQUESTED_MODEL_NOT_EXIST_CODE = 200;
    const MODEL_MISSING_CODE = 201;
    const MODEL_ATTRIBUTES_MISSING_CODE = 202;
    const MODEL_ERROR_DURING_CREATE_CODE = 203;
    const MODEL_CREATED_SUCCESSFULLY_CODE = 204;
    const RECORD_NOT_EXIST_CODE = 205;
    const UNABLE_TO_PARSE_MODEL_ATTR_CODE = 206;
    const MODEL_ERROR_DURING_UPDATE_CODE = 207;
    const MODEL_UPDATED_SUCCESSFULLY_CODE = 208;
    const MODEL_ERROR_DURING_DELETE_CODE = 209;
    
    /* API STATUS DESCRIPTIONS */
    const MODEL_MISSING_DESC = 'Model is missing from the API request';
    const REQUESTED_MODEL_NOT_EXIST_DESC = 'The requested model does not exist';
    const MODEL_ATTRIBUTES_MISSING_DESC = 'Model attributes not provided';
    const MODEL_ERROR_DURING_CREATE_DESC = 'Model error occurred during create';
    const MODEL_CREATED_SUCCESSFULLY_DESC = 'Model created successfully';
    const RECORD_NOT_EXIST_DESC = 'The requested record does not exist';
    const UNABLE_TO_PARSE_MODEL_ATTR_DESC = 'Unable to parse model attributes';
    const MODEL_ERROR_DURING_UPDATE_DESC = 'Model error occurred during update';
    const MODEL_UPDATED_SUCCESSFULLY_DESC = 'Model updated successfully';
    const MODEL_ERROR_DURING_DELETE_DESC = 'Model error occurred during delete';
}

?>
