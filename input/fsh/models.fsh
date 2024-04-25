Logical: HDS-Sample-Model
Title: "HDS-Sample-Model"
Description: "HDS Sample Model"
Characteristics: #can-be-target

* dateTimeReceived 1..1 TS "Timestamp received"
* dataProvider 0..1 Class "Data provider"
  * officeName 0..1 ST20 "Office name"
  * practitionerCircleName 0..1 ST20 "Practitioner Circle name"
  * practiceType 0..1 ST20 "Practice Type"
  * contactEmail 0..1 ST20 "contact email"
  * caregiverIdentifier 0..1 Class "Identifier(s) of the provider"
    * nihdii 0..1 ST20 "nihdii number"
  * postalCode 0..1 ST20 "Postal code"
  * street 0..1 ST20 "Street name"
  * houseNr 0..1 ST20 "House number"
  * postbox 0..1 ST20 "Post box"
  * MeasureReport 0..* Reference("MeasureReport") "MeasureReport"




Profile: Class
Parent: BackboneElement
Description: "Class of data elements"
* . ^short = "group"
* . ^definition = "Class of data elements"
// Why is class derived from BackboneElement better than BackboneElement itself?


Profile: ST20
Parent: Element
Description: "CharacterString"
* . ^short = "Text"
* . ^definition = "String"
// value, language?


Profile: TS
Parent: Element
Description: "TimeStamp"
* . ^short = "Timestamp"
* . ^definition = "A quantity specifying a point on the axis of natural time. A point in time is most often represented as a calendar expression."
// value
