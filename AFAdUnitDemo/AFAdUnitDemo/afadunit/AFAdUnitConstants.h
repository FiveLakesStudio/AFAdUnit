/*!
 *  @header    AFAdUnitConstants.h
 *  @abstract  Appsfire Ad Unit Constants Header
 *  @version   0.5
 */

typedef enum {
    AFAdUnitErrorCodeUnknown            = 1042,     // unknown
    AFAdUnitErrorCodeNoAd               = 1043,     // no ad available
    AFAdUnitErrorCodeBadCall            = 1044,     // the request call isn't appropriate
    AFAdUnitErrorCodeAdAlreadyDisplayed = 1045      // an ad is currently displayed for this format
} AFAdUnitErrorCode;
