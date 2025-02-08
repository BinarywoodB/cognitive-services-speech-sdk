# SpeechServicesApiVersion20241115.LanguageIdentificationProperties

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**candidateLocales** | **[String]** | The candidate locales for language identification (example [\"en-US\", \"de-DE\", \"es-ES\"]). A minimum of 2 and a maximum of 10 candidate locales, including the main locale for the transcription, is supported for continuous mode. For single language identification, the maximum number of candidate locales is unbounded. | 
**speechModelMapping** | [**{String: EntityReference}**](EntityReference.md) | An optional mapping of locales to speech model entities. If no model is given for a locale, the default base model is used. Keys must be locales contained in the candidate locales, values are entities for models of the respective locales. | [optional] 
**mode** | [**LanguageIdentificationMode**](LanguageIdentificationMode.md) |  | [optional] 


