# SpeechServicesApiVersion20241115.CustomModelProperties

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deprecationDates** | [**CustomModelDeprecationDates**](CustomModelDeprecationDates.md) |  | [optional] 
**customModelWeightPercent** | **Number** | The weight of custom model between 1 (1% custom model and 99% base model) and 100 (100% custom model and 0% base model). When this property is not set, the service chooses a suitable value (get the model to retrieve the selected weight). Start without using this property. If needed, choose a larger (or smaller) weight to increase (or decrease) the impact of the custom model. | [optional] 
**features** | [**CustomModelFeatures**](CustomModelFeatures.md) |  | [optional] 
**error** | [**EntityError**](EntityError.md) |  | [optional] 


