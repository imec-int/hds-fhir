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
    * identifier:NIHDI 0..1 ST20 "NIHDI identifier"
  * postalCode 0..1 ST20 "Postal code"
  * street 0..1 ST20 "Street name"
  * houseNr 0..1 ST20 "House number"
  * postbox 0..1 ST20 "Post box"
  * MeasureReport 0..* Class "Measure Report"
    * measureReportIdentifier 0..1 ST20 "Measure Report Identifier"
    * measureReportType 0..1 ST20 "Measure Report Type"
    * measureReportStatus 0..1 ST20 "Measure Report Status"
    * measureReportPeriod 0..1 Class "Measure Report Period"
      * measureReportPeriodStart 0..1 TS "Measure Report Period Start"
      * measureReportPeriodEnd 0..1 TS "Measure Report Period End"
    * measureReportMeasure 0..1 Class "Measure Report Measure"
      * measureReportMeasureIdentifier 0..1 ST20 "Measure Report Measure Identifier"
      * measureReportMeasureType 0..1 ST20 "Measure Report Measure Type"
      * measureReportMeasureValue 0..1 ST20 "Measure Report Measure Value"
      * measureReportMeasureUnit 0..1 ST20 "Measure Report Measure Unit"
    * measureReportSubject 0..1 Class "Measure Report Subject"
      * measureReportSubjectIdentifier 0..1 ST20 "Measure Report Subject Identifier"
      * measureReportSubjectType 0..1 ST20 "Measure Report Subject Type"
      * measureReportSubjectReference 0..1 ST20 "Measure Report Subject Reference"
    * measureReportSource 0..1 Class "Measure Report Source"
      * measureReportSourceIdentifier 0..1 ST20 "Measure Report Source Identifier"
      * measureReportSourceType 0..1 ST20 "Measure Report Source Type"
      * measureReportSourceReference 0..1 ST20 "Measure Report Source Reference"
    * measureReportEvaluatedResources 0..1 Class "Measure Report Evaluated Resources"
      * measureReportEvaluatedResourcesIdentifier 0..1 ST20 "Measure Report Evaluated Resources Identifier"
      * measureReportEvaluatedResourcesType 0..1 ST20 "Measure Report Evaluated Resources Type"
      * measureReportEvaluatedResourcesReference 0..1 ST20 "Measure Report Evaluated Resources Reference"
    * measureReportEvaluatedResources 0..1 Class "Measure Report Evaluated Resources"
      * measureReportEvaluatedResourcesIdentifier 0..1 ST20 "Measure Report Evaluated Resources Identifier"
      * measureReportEvaluatedResourcesType 0..1 ST20 "Measure Report Evaluated Resources Type"
      * measureReportEvaluatedResourcesReference 0..1 ST20 "Measure Report Evaluated Resources Reference"
    *




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
