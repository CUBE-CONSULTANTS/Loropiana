/* checksum : af3a0ee0731f0423f464bfdf7e791762 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Company Code'
@sap.value.list : 'true'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_CompanyCodeStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Controlling Area'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_ControllingArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingAreaName'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal Year Variant'
  FiscalYearVariant : String(2);
  @sap.label : 'Controlling Area Name'
  ControllingAreaName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area Currency'
  @sap.semantics : 'currency-code'
  ControllingAreaCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChartOfAccounts_Text'
  @sap.label : 'Chart of Accounts'
  ChartOfAccounts : String(4);
  @sap.label : 'Chart of Accounts Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChartOfAccounts_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Standard Hierarchy'
  CostCenterStandardHierarchy : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operating concern'
  OperatingConcern : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center Standard Hierarchy'
  ProfitCenterStandardHierarchy : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Process Standard Hierarchy Area'
  BusinessProcessStandardHier : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account for Supplier Down Payments'
  @sap.quickinfo : 'Default General Ledger Account for Supplier Down Payments'
  CreditDownPaymentDefaultGLAcct : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account for Customer Down Payments'
  @sap.quickinfo : 'Default General Ledger Account for Customer Down Payments'
  DebitDownPaymentDefaultGLAcct : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency Type for Controlling Area'
  ControllingAreaCurrencyRole : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'FM Area'
  @sap.quickinfo : 'Financial Management Area'
  FinancialManagementArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Responsible User of Controlling Area'
  ControllingAreaResponsibleUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Default Profit Center'
  @sap.quickinfo : 'Default Profit Center for Nonassigned Processes'
  DefaultProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CtrlgStdFinStatementVersion_Text'
  @sap.label : 'Leading Ctrlg Financial Stmnt Version'
  @sap.quickinfo : 'Leading Controlling Financial Statement Version'
  CtrlgStdFinStatementVersion : String(42);
  @sap.label : 'Financial Statement Description'
  @sap.quickinfo : 'Hierarchy description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CtrlgStdFinStatementVersion_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center Local Currency'
  @sap.quickinfo : 'Local Currency for Profit Center Accounting'
  @sap.semantics : 'currency-code'
  ProfitCenterAccountingCurrency : String(5);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Cost Center'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_CostCenter {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'Cost Center'
  key CostCenter : String(10) not null;
  @sap.label : 'Cost Center Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  ValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actual primary costs'
  @sap.quickinfo : 'Lock Indicator for Actual Primary Postings'
  IsBlkdForPrimaryCostsPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan primary costs'
  @sap.quickinfo : 'Lock Indicator for Plan Primary Costs'
  IsBlockedForPlanPrimaryCosts : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Category'
  CostCenterCategory : String(1);
  @sap.label : 'Person Responsible'
  CostCtrResponsiblePersonName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Responsible'
  CostCtrResponsibleUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  CostCenterCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Sheet'
  CostingSheet : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Logical System'
  LogicalSystem : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Entered On'
  CostCenterCreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Entered By'
  CostCenterCreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actl Sec. Costs'
  @sap.quickinfo : 'Lock Indicator for Actual Secondary Costs'
  IsBlkdForSecondaryCostsPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actual Revenues'
  @sap.quickinfo : 'Lock Indicator for Actual Revenue Postings'
  IsBlockedForRevenuePosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commitment Update'
  @sap.quickinfo : 'Lock Indicator for Commitment Update'
  IsBlockedForCommitmentPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lock Plan Sec Costs'
  @sap.quickinfo : 'Lock Indicator for Plan Secondary Costs'
  IsBlockedForPlanSecondaryCosts : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lock Planning Revn'
  @sap.quickinfo : 'Lock Indicator for Planning Revenues'
  IsBlockedForPlanRevenues : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Allocation Methods'
  @sap.quickinfo : 'Indicator for Allowed Allocation Methods'
  CostCenterAllocationMethod : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record Quantity'
  @sap.quickinfo : 'Indicator for Recording Consumption Quantities'
  ConsumptionQtyIsRecorded : String(1);
  @sap.label : 'Department'
  Department : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Cost Ctr.'
  @sap.quickinfo : 'Subsequent Cost Center'
  SubsequentCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Usage'
  @sap.quickinfo : 'Usage of the condition table'
  ConditionUsage : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Application'
  ConditionApplication : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overhead Key'
  @sap.quickinfo : 'CO-CCA Overhead Key'
  CostCenterAccountingOverhead : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'Title'
  FormOfAddress : String(15);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  AddressName : String(35);
  @sap.label : 'Name 2'
  AddressAdditionalName : String(35);
  @sap.label : 'Name 3'
  CostCenterAddrName3 : String(35);
  @sap.label : 'Name 4'
  CostCenterAddrName4 : String(35);
  @sap.label : 'City'
  CityName : String(35);
  @sap.label : 'District'
  District : String(35);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetAddressName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'P.O. Box Postal Code'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.label : 'Telebox Number'
  TeleboxNumber : String(15);
  @sap.label : 'Telephone 1'
  @sap.quickinfo : 'First telephone number'
  PhoneNumber1 : String(16);
  @sap.label : 'Telephone 2'
  @sap.quickinfo : 'Second telephone number'
  PhoneNumber2 : String(16);
  @sap.label : 'Fax Number'
  FaxNumber : String(31);
  @sap.label : 'Teletex Number'
  TeletexNumber : String(30);
  @sap.label : 'Telex Number'
  TelexNumber : String(30);
  @sap.label : 'Data line'
  @sap.quickinfo : 'Data communication line no.'
  DataCommunicationPhoneNumber : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Printer Destination'
  @sap.quickinfo : 'Printer Destination for CCtr Report'
  CostCenterPrinterDestination : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hierarchy Area'
  @sap.quickinfo : 'Standard Hierarchy Area'
  CostCenterStandardHierArea : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Collector Key'
  CostCollector : String(23);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Complete'
  @sap.quickinfo : 'Completion Flag for the Cost Center Master Record'
  CostCenterIsComplete : String(1);
  @sap.label : 'Cost Center Is Stat.'
  @sap.quickinfo : 'Indicator: Cost Center is Statistical Account Assignment'
  IsStatisticalCostCenter : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  ObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Function'
  @sap.quickinfo : 'Function of Cost Center'
  CostCenterFunction : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Altern. Function'
  @sap.quickinfo : 'Alternative Function of Cost Center'
  CostCenterAlternativeFunction : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity-Indep.Temp.'
  @sap.quickinfo : 'Template for Activity-Independent Formula Planning'
  ActyIndepFormulaPlanningTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity-Dep.Tmp'
  @sap.quickinfo : 'Template for Activity-Dependent Formula Planning'
  ActyDepdntFormulaPlanningTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acty-IndepTemplAlloc'
  @sap.quickinfo : 'Template: Activity-Independent Allocation to Cost Center'
  ActyIndependentAllocationTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acty-Dep Templ.Alloc'
  @sap.quickinfo : 'Template: Activity-Dependent Allocation to Cost Center'
  ActyDependentAllocationTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ.: Stat. KF'
  @sap.quickinfo : 'CCA_TEMPL_SKI'
  ActlIndepStatisticalKeyFigures : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ.: Stat. KF'
  @sap.quickinfo : 'Template: Act. Stat. Key Figure - Cost Center/Activity Type'
  ActlDepStatisticalKeyFigures : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Joint venture'
  JointVenture : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recovery Indicator'
  JointVentureRecoveryCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equity Type'
  JointVentureEquityType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'JV Object Type'
  @sap.quickinfo : 'Joint Venture Object Type'
  JointVentureObjectType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIB/JIBE Class'
  JointVentureClass : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIB/JIBE Subclass A'
  JointVentureSubClass : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Budget Cost Center'
  @sap.quickinfo : 'Budget-Carrying Cost Center'
  BudgetCarryingCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Availy Ctrl Prfl'
  @sap.quickinfo : 'Budget Availability Control: Profile'
  AvailabilityControlProfile : String(6);
  @sap.label : 'AVC is Active'
  @sap.quickinfo : 'Budget Availability Control for Cost Centers is Active'
  AvailabilityControlIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fund'
  Fund : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grant'
  GrantID : String(20);
  @sap.label : 'Fund Fixed Assignment'
  @sap.quickinfo : 'Indicator for Fund with Fixed Assignment'
  FundIsFixAssigned : Boolean;
  @sap.label : 'Grant Fixed Assignment'
  @sap.quickinfo : 'Indicator for Grant with Fixed Assignment'
  GrantIDIsFixAssigned : Boolean;
  @sap.label : 'Functional Area Fixed Assignment'
  @sap.quickinfo : 'Indicator for Functional Area with Fixed Assignment'
  FunctionalAreaIsFixAssigned : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_Customer {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.label : 'Name of Customer'
  CustomerName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Customer Full Name'
  CustomerFullName : String(220);
  @sap.label : 'Name of Customer'
  @sap.quickinfo : 'Customer Name'
  BPCustomerName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Customer Full Name'
  BPCustomerFullName : String(220);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerClassification_Text'
  @sap.label : 'Customer Classific.'
  @sap.quickinfo : 'Customer Classification'
  CustomerClassification : String(2);
  @sap.label : 'Customer Classification Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerClassification_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery block'
  @sap.quickinfo : 'Central delivery block for the customer'
  DeliveryIsBlocked : String(2);
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central posting block'
  PostingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing block'
  @sap.quickinfo : 'Central billing block for customer'
  BillingIsBlockedForCustomer : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order block'
  @sap.quickinfo : 'Central order block for customer'
  OrderIsBlockedForCustomer : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International Location Number (Part 1)'
  InternationalLocationNumber1 : String(7);
  @sap.label : 'One-time account'
  @sap.quickinfo : 'Indicator: Is the account a one-time account?'
  IsOneTimeAccount : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry Key'
  Industry : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax number type'
  @sap.quickinfo : 'Tax Number Type'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 1'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 2'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 3'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 4'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 5'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 6'
  TaxNumber6 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Key'
  CustomerCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nielsen indicator'
  @sap.quickinfo : 'Nielsen ID'
  NielsenRegion : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 1'
  IndustryCode1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 2'
  IndustryCode2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 3'
  IndustryCode3 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 4'
  IndustryCode4 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 5'
  IndustryCode5 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Name 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'City'
  CityName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  PostalCode : String(10);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search term'
  @sap.quickinfo : 'Sort field'
  SortField : String(10);
  @sap.label : 'Fax Number'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suframa Code'
  BR_SUFRAMACode : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Telephone 1'
  @sap.quickinfo : 'First telephone number'
  TelephoneNumber1 : String(16);
  @sap.label : 'Telephone 2'
  @sap.quickinfo : 'Second telephone number'
  TelephoneNumber2 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative Payer'
  @sap.quickinfo : 'Account Number of an Alternative Payer'
  AlternativePayerAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'DME Recipient Code'
  @sap.quickinfo : 'Recipient Code for Data Medium Exchange'
  DataMediumExchangeIndicator : String(1);
  @sap.label : 'Liable for VAT'
  VATLiability : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Completed'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Type'
  ResponsibleType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal address'
  @sap.quickinfo : 'Account number of the master record with the fiscal address'
  FiscalAddress : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  NFPartnerIsNaturalPerson : String(1);
  @sap.label : 'Deletion Flag'
  @sap.quickinfo : 'Central Deletion Flag for Master Record'
  DeletionIndicator : Boolean;
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trading Partner No.'
  @sap.quickinfo : 'Company ID of Trading Partner'
  TradingPartner : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deliv Date Rule'
  @sap.quickinfo : 'Delivery Date Rule'
  DeliveryDateTypeRule : String(1);
  @sap.label : 'Express station'
  @sap.quickinfo : 'Express train station'
  ExpressTrainStationName : String(25);
  @sap.label : 'Train station'
  TrainStationName : String(25);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International Location Number (Part 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  CityCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'County Code'
  County : String(3);
  @sap.label : 'Unloading points'
  @sap.quickinfo : 'Indicator: Unloading points exist'
  CustomerHasUnloadingPoint : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Working times'
  @sap.quickinfo : 'Working Time Calendar'
  CustomerWorkingTimeCalendar : String(2);
  @sap.label : 'Competitors'
  @sap.quickinfo : 'Indicator: Competitor'
  IsCompetitor : Boolean;
  @sap.label : 'Rep''s Name'
  @sap.quickinfo : 'Name of Representative'
  TaxInvoiceRepresentativeName : String(10);
  @sap.label : 'Type of Business'
  BusinessType : String(30);
  @sap.label : 'Type of Industry'
  IndustryType : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consolidated Invoic.'
  @sap.quickinfo : 'Consolidated Invoicing for Taiwan'
  TW_CollvBillingIsSupported : String(1);
  @sap.label : 'Alt.payer in doc?'
  @sap.quickinfo : 'Indicator: Is an alternative payer allowed in document?'
  AlternativePayeeIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attribute 1'
  FreeDefinedAttribute01 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial Category'
  FreeDefinedAttribute02 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Main BusinessType'
  @sap.quickinfo : 'Attribute 3 - Main BusType'
  FreeDefinedAttribute03 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SubChannel'
  FreeDefinedAttribute04 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attribute 5'
  FreeDefinedAttribute05 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attribute 6'
  FreeDefinedAttribute06 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attribute 7'
  FreeDefinedAttribute07 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial Area'
  FreeDefinedAttribute08 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Like For Like Flag'
  @sap.quickinfo : 'L4L Flag'
  FreeDefinedAttribute09 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sell-Out Currency'
  FreeDefinedAttribute10 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Reason'
  PaymentReason : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'RTW category'
  @sap.quickinfo : 'Customer condition group 1 - RTW category'
  CustomerConditionGroup1 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MTM Category'
  @sap.quickinfo : 'Customer condition group 2 - MTM Category'
  CustomerConditionGroup2 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition group 3'
  @sap.quickinfo : 'Customer condition group 3'
  CustomerConditionGroup3 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition group 4'
  @sap.quickinfo : 'Customer condition group 4'
  CustomerConditionGroup4 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition group 5'
  @sap.quickinfo : 'Customer condition group 5'
  CustomerConditionGroup5 : String(2);
  @sap.label : 'Prospect'
  @sap.quickinfo : 'Indicator: Sales prospect'
  IsSalesProspect : Boolean;
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Payment Block'
  PaymentIsBlockedForCustomer : Boolean;
  @sap.label : 'Consumer'
  @sap.quickinfo : 'Indicator: Consumer'
  IsConsumer : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Ctrlr. Set'
  @sap.quickinfo : 'BP: Data Controller Set Flag'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController10 : String(30);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Name 2'
  BusinessPartnerName2 : String(40);
  @sap.label : 'Name 3'
  BusinessPartnerName3 : String(40);
  @sap.label : 'Name 4'
  BusinessPartnerName4 : String(40);
  @sap.label : 'City'
  BPAddrCityName : String(40);
  @sap.label : 'Street'
  BPAddrStreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 1'
  AddressSearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 2'
  AddressSearchTerm2 : String(20);
  @sap.label : 'District'
  DistrictName : String(40);
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title Key'
  @sap.quickinfo : 'Form-of-Address Key'
  BusinessPartnerFormOfAddress : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Goods Movement Type'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_GoodsMovementType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'GoodsMovementType_Text'
  @sap.label : 'Movement Type'
  @sap.quickinfo : 'Movement Type (Inventory Management)'
  key GoodsMovementType : String(3) not null;
  @sap.label : 'Movement Type Text'
  @sap.quickinfo : 'Movement Type Text (Inventory Management)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GoodsMovementType_Text : String(20);
  @sap.label : 'Rev. mvmnt type ind.'
  @sap.quickinfo : 'Reversal movement type'
  IsReversalMovementType : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Debit/Credit Ind.'
  @sap.quickinfo : 'Debit/Credit Indicator'
  DebitCreditCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reserv. cat.'
  @sap.quickinfo : 'Account assignment of reservation'
  ResvnAcctAssgmtCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting string ref.'
  @sap.quickinfo : 'Posting string reference (Inventory Management)'
  BasicMovementTypeReference : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Movement Type'
  @sap.quickinfo : 'Goods Movement Type (Inventory Management) copied'
  SourceGoodsMovementType : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'Logistics Order'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_LogisticsOrder {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  OrderID : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Category'
  OrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Type'
  OrderType : String(4);
  @sap.label : 'Order Description'
  OrderDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Order Has Long Text'
  OrderHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Long Text Language'
  LongTextLanguage : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Deletion Flag'
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Multiple Items'
  @sap.quickinfo : 'Order Has Multiple Items'
  MfgOrderHasMultipleItems : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Collective Order'
  @sap.quickinfo : 'Order is Part of Collective Order'
  MfgOrderIsPartOfCollvOrder : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Superior Order'
  @sap.quickinfo : 'Number of Superior Order'
  MfgOrderSuperiorMfgOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Refurbishment order'
  @sap.quickinfo : 'Refurbishment order indicator (PM)'
  OrderIsRefurbishmentOrder : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Statistical'
  @sap.quickinfo : 'Identifier for Statistical Order'
  IsStatisticalOrder : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority'
  @sap.quickinfo : 'Order priority'
  PriorityCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Level'
  @sap.quickinfo : 'Level (in multi-level BOM explosions)'
  MfgOrderHierarchyLevel : Decimal(2, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Flexible Processing'
  ProdnProcgIsFlexible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Event-Based Posting'
  OrderIsEventBasedPosting : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Event-Based Posting'
  EventBasedPostingMethod : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  CreationDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Time created'
  CreationTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Entered By'
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Change Date for Order Master'
  LastChangeDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Changed At'
  LastChangeTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Last Changed By'
  LastChangedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Opertn Task List No.'
  @sap.quickinfo : 'Routing Number of Operations in the Order'
  OrderInternalBillOfOperations : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Order'
  @sap.quickinfo : 'Reference Order Number'
  ReferenceOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Leading Order'
  @sap.quickinfo : 'Leading Order in Current Processing'
  LeadingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Main Work Center'
  @sap.quickinfo : 'Main work center for maintenance tasks'
  MainWorkCenter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant for WorkCenter'
  @sap.quickinfo : 'Plant associated with main work center'
  MainWorkCenterPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location/Plant'
  @sap.quickinfo : 'Location'
  MaintenanceObjectLocation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location Plant'
  LocationPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP controller'
  @sap.quickinfo : 'MRP controller for the order'
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prodn Supervisor'
  @sap.quickinfo : 'Production Supervisor'
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prod. Sched. Profile'
  @sap.quickinfo : 'Production Scheduling Profile'
  ProductionSchedulingProfile : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planner Group'
  @sap.quickinfo : 'Responsible Planner Group or Department'
  ResponsiblePlannerGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  SalesOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Item'
  @sap.quickinfo : 'Item Number in Sales Order'
  SalesOrderItem : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  WBSElementInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Project def.'
  @sap.quickinfo : 'Project definition'
  ProjectInternalID : String(24);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Project Def.'
  @sap.quickinfo : 'Project (internal)'
  ProjectInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subnetwork of'
  @sap.quickinfo : 'Number of superior network'
  SuperiorProjectNetwork : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  Reservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  SettlementReservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Confirmation'
  @sap.quickinfo : 'Completion confirmation number for the operation'
  MfgOrderConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  MfgOrderConfirmationCount : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Capacity Requirement'
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Inspection Lot'
  @sap.quickinfo : 'Inspection Lot Number'
  InspectionLot : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  EngineeringChangeOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling type'
  BasicSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sched. type forecast'
  @sap.quickinfo : 'Scheduling type (forecast)'
  ForecastSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling basis'
  @sap.quickinfo : 'Basis for scheduling'
  ProdAvailyCheckPlanningType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Interest Profile'
  @sap.quickinfo : 'Interest Profile for Project/Order Interest Calculation'
  ProjInterestCalcProfile : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account assignment'
  @sap.quickinfo : 'Indicator for the account assignment of a network(hdr/act.)'
  NtwkAccountAssignmentCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network Profile'
  NetworkProfile : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Internal object no.'
  @sap.quickinfo : 'Configuration (internal object number)'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Application'
  ConditionApplication : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'External order no.'
  @sap.quickinfo : 'External order number'
  ExternalOrder : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overhead key'
  OverheadCode : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'No automatic costing'
  @sap.quickinfo : 'Indicator: Do not cost automatically'
  OrderIsNotCostedAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'No auto. scheduling'
  @sap.quickinfo : 'Indicator: Do not schedule automatically'
  OrdIsNotSchedldAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Version'
  @sap.quickinfo : 'Version of Available Capacity'
  CapacityActiveVersion : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Cap. Requirements'
  @sap.quickinfo : 'Indicator: Do not Create Capacity Requirements'
  CapacityRqmtHasNotToBeCreated : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  @sap.quickinfo : 'Sequence Number Order'
  OrderSequenceNumber : String(14);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Revision Level'
  MaterialRevisionLevel : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Revision Level'
  MaterialRevisionLevel_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Split Status'
  @sap.quickinfo : 'Status of an Order in a Split Hierarchy'
  MfgOrderSplitStatus : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'EQC Relevant Order'
  @sap.quickinfo : 'Shop Floor Order is Relevant for Extended Quality Checks'
  ExtdQualityCheckIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Master Prod. Ord.'
  @sap.quickinfo : 'Master Production Order Number'
  MasterProductionOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Requesting co. code'
  @sap.quickinfo : 'Requesting company code'
  RequestingCompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  @sap.quickinfo : 'Cost Center for Basic Settlement'
  CostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Request. cost center'
  @sap.quickinfo : 'Requesting cost center'
  RequestingCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Respons. Cost Center'
  @sap.quickinfo : 'Responsible Cost Center'
  ResponsibleCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Element'
  @sap.quickinfo : 'Settlement Cost Element'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account for Basic Settlement'
  GLAccount : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Collector'
  @sap.quickinfo : 'Cost Collector for Production Process'
  ProductCostCollector : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Sheet'
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Object Class'
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Joint venture'
  JointVenture : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIB/JIBE Class'
  JointVentureClass : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIB/JIBE Subclass A'
  JointVentureSubClass : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Orig. Cost Object'
  @sap.quickinfo : 'JV original cost object'
  JointVentureOriginalCostObject : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'JV Object Type'
  @sap.quickinfo : 'Joint Venture Object Type'
  JointVentureObjectType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Investment Reason'
  @sap.quickinfo : 'Reason for Investment'
  InvestmentReason : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Envir. Investment'
  @sap.quickinfo : 'Reason for Environmental Investment'
  EnvironmentalInvestmentReason : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Act. Costing Variant'
  @sap.quickinfo : 'Costing Variant For Actual Costs'
  ActualCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plnd Costing Variant'
  @sap.quickinfo : 'Costing Variant for Planned Costs'
  PlannedCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Processing group'
  OrderProcessingGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Material'
  @sap.quickinfo : 'Bill of Operations Material'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Type'
  @sap.quickinfo : 'Bill of Operations Type'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Operations'
  @sap.quickinfo : 'Bill of Operations ID'
  BillOfOperations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Group'
  @sap.quickinfo : 'Bill of Operations Group'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Variant'
  @sap.quickinfo : 'Bill of Operations Variant'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  BOOInternalVersionCounter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Application'
  @sap.quickinfo : 'Bill of Operations Application'
  BillOfOperationsApplication : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Usage'
  @sap.quickinfo : 'Bill of Operations Usage'
  BillOfOperationsUsage : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Routing Version'
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Explosion Date'
  @sap.quickinfo : 'Date for Routing Explosion'
  BOOExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  BOOValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOM Category'
  @sap.quickinfo : 'Bill of Material Category Code'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Material'
  BillOfMaterial : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill Of Material'
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative BOM'
  BillOfMaterialVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOM Usage'
  BillOfMaterialVariantUsage : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOM Version'
  BillOfMaterialVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'BOM Explosion Date'
  @sap.quickinfo : 'Date of BOM Explosion/Routing Transfer'
  BOMExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  BOMValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling Float Profile'
  @sap.quickinfo : 'Scheduling Profile for Floats'
  SchedulingFloatProfile : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Float Before Production'
  @sap.quickinfo : 'Float Before Production in Workdays'
  FloatBeforeProductionInWrkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Float After Production'
  @sap.quickinfo : 'Float After Production in Workdays'
  FloatAfterProductionInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Release period'
  @sap.quickinfo : 'Release period (in days)'
  ReleasePeriodInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scheduled Dates Changed'
  @sap.quickinfo : 'Indicator: Change to Scheduled Dates'
  ChangeToScheduledDatesIsMade : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Basic Start Date'
  PlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Basic start time'
  @sap.quickinfo : 'Basic Start (Time)'
  PlannedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Basic finish date'
  PlannedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Basic Finish Time'
  @sap.quickinfo : 'Basic Finish (Time)'
  PlannedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled start'
  ScheduledBasicStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scheduled start time'
  @sap.quickinfo : 'Scheduled Start (Time)'
  ScheduledBasicStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled finish'
  ScheduledBasicEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scheduled fin. time'
  @sap.quickinfo : 'Scheduled finish time'
  ScheduledBasicEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Sched. release date'
  @sap.quickinfo : 'Scheduled release date'
  ScheduledReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Actual start date'
  ActualStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'ActualStartTime'
  @sap.quickinfo : 'Actual start time'
  ActualStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Actual finish date'
  ActualEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Actual release date'
  ActualReleasedDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Actual Finish Date'
  @sap.quickinfo : 'Confirmed Order Finish Date'
  ConfirmedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Actual Finish Time'
  @sap.quickinfo : 'Confirmed Order Finish (Time)'
  ConfirmedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled start'
  @sap.quickinfo : 'Scheduled forecast start'
  ScheduledForecastedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sched. start time'
  @sap.quickinfo : 'Scheduled start time (Forecast)'
  ScheduledForecastedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled finish'
  @sap.quickinfo : 'Scheduled forecast finish'
  ScheduledForecastedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sched. finish time'
  @sap.quickinfo : 'Scheduled forecast finish time'
  ScheduledForecastedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Sched. release date'
  @sap.quickinfo : 'Scheduled release date (forecast)'
  ScheduledFcstdReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Start date'
  @sap.quickinfo : 'Forecast start date'
  ForecastedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Start time'
  @sap.quickinfo : 'Forecast start (time)'
  ForecastedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Finish date'
  @sap.quickinfo : 'Finish date (forecast)'
  ForecastedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Finish time'
  @sap.quickinfo : 'Forecast finish (time)'
  ForecastedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Commitment Date'
  @sap.quickinfo : 'Total Commitment Date'
  TotalCommitmentDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled on'
  @sap.quickinfo : 'Date of the Last Scheduling'
  LastScheduledDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Planned release'
  @sap.quickinfo : 'Planned release date'
  PlannedReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Planned completion'
  @sap.quickinfo : 'Planned completion date'
  PlannedCompletionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Technical Completion'
  @sap.quickinfo : 'Technical Completion Date'
  TechnicalCompletionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Total Order Quantity'
  @sap.filterable : 'false'
  OrderPlannedTotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Total Scrap Quantity'
  @sap.quickinfo : 'Total Scrap Quantity in the Order'
  @sap.filterable : 'false'
  OrderPlannedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Confirmed Yield'
  @sap.quickinfo : 'Confirmed Yield Quantity From Order Confirmation'
  @sap.filterable : 'false'
  OrderConfirmedYieldQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Confirmed Scrap'
  @sap.quickinfo : 'Confirmed Scrap Quantity From Order Confirmation'
  @sap.filterable : 'false'
  OrderConfirmedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Confirmed Rework'
  @sap.quickinfo : 'Total Confirmed Rework Quantity'
  @sap.filterable : 'false'
  MfgOrderConfirmedReworkQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'From Lot Size'
  @sap.filterable : 'false'
  MaterialFromLotSizeQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'To Lot Size'
  @sap.filterable : 'false'
  MaterialToLotSizeQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Base quantity'
  @sap.filterable : 'false'
  PlannedTotalQtyInBaseUnit : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Order Currency'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'Currency'
  @sap.label : 'Estimated costs'
  @sap.quickinfo : 'Estimated total costs of order'
  @sap.filterable : 'false'
  EstimatedTotalOrderCost : Decimal(12, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material'
@sap.value.list : 'true'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_MaterialStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Material_Text'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Material : String(40) not null;
  @sap.label : 'Material Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Material_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Manufacturing Order Category'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_MfgOrderCategory {
  @sap.display.format : 'NonNegative'
  @sap.text : 'ManufacturingOrderCategory_Text'
  @sap.label : 'Order Category'
  @sap.quickinfo : 'Manufacturing Order Category'
  key ManufacturingOrderCategory : String(2) not null;
  @sap.label : 'Order Category Name'
  @sap.quickinfo : 'Manufacturing Order Category Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderCategory_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Manufacturing Order Type'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_MfgOrderType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ManufacturingOrderType_Text'
  @sap.label : 'Order Type'
  @sap.quickinfo : 'Manufacturing Order Type'
  key ManufacturingOrderType : String(4) not null;
  @sap.label : 'Order Type Name'
  @sap.quickinfo : 'Manufacturing Order Type Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderType_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.text : 'to_MfgOrderCategory/ManufacturingOrderCategory_Text'
  @sap.label : 'Order Category'
  @sap.quickinfo : 'Manufacturing Order Category'
  @sap.value.list : 'fixed-values'
  ManufacturingOrderCategory : String(2);
  to_MfgOrderCategory : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_MfgOrderCategory {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Product Category Type Value Help'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_Productcategoryvh {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductCategory_Text'
  @sap.label : 'Product Category'
  key ProductCategory : String(2) not null;
  @sap.label : 'Product Category Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCategory_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Product Value Help'
@sap.value.list : 'true'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_ProductVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Product_Text'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.label : 'Product Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Product_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'External Product ID'
  @sap.quickinfo : 'External Representation of Material Number'
  ProductExternalID : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  IndustrySector : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type'
  ProductType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Group'
  ProductGroup : String(9);
  @sap.text : 'to_BaseUnit/UnitOfMeasure_Text'
  @sap.label : 'Base Unit of Measure'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Gross Weight'
  GrossWeight : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Net Weight'
  NetWeight : Decimal(13, 3);
  @sap.text : 'to_WeightUnit/UnitOfMeasure_Text'
  @sap.label : 'Unit of Weight'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Number of a Manufacturer'
  ManufacturerNumber : String(10);
  @sap.label : 'Batch Management'
  @sap.quickinfo : 'Batch Management Requirement Indicator'
  IsBatchManagementRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Part Number'
  @sap.quickinfo : 'Manufacturer Part Number'
  ProductManufacturerNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ProductCategory/ProductCategory_Text'
  @sap.label : 'Product Category'
  @sap.value.list : 'standard'
  ArticleCategory : String(2);
  to_BaseUnit : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_UnitOfMeasure {  };
  to_ProductCategory : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_Productcategoryvh {  };
  to_WeightUnit : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_UnitOfMeasure {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Reservation Document Header'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_ReservationDocumentHeader {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  key Reservation : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resv. Creation Code'
  @sap.quickinfo : 'Reservation Creation Code'
  ReservationCreationCode : String(4);
  @sap.label : 'Origin'
  ReservationOrigin : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.value.list : 'standard'
  OrderID : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_GoodsMovementType/GoodsMovementType_Text'
  @sap.label : 'Movement Type'
  @sap.quickinfo : 'Movement Type (Inventory Management)'
  @sap.value.list : 'standard'
  GoodsMovementType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_CostCenter/CostCenter_Text'
  @sap.label : 'Cost Center'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Profitability Segment (Deprecated)'
  @sap.quickinfo : 'Deprecated: Profitability Segment'
  ProfitabilitySegment : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profitability Segment'
  ProfitabilitySegment_2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControllingArea/ControllingAreaName'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Base date'
  @sap.quickinfo : 'Base date for reservation'
  ReservationDate : Date;
  @sap.label : 'Check against cal.'
  @sap.quickinfo : 'Check date against factory calendar'
  IsCheckedAgainstFactoryCal : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Customer/CustomerName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Account number of customer'
  @sap.value.list : 'standard'
  Customer : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  SalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Item'
  @sap.quickinfo : 'Item Number in Sales Order'
  SalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales order schedule'
  @sap.quickinfo : 'Delivery schedule for sales order'
  SalesOrderScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  AssetNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sub-number'
  @sap.quickinfo : 'Asset Subnumber'
  AssetSubNumber : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network'
  @sap.quickinfo : 'Network Number for Account Assignment'
  NetworkNumberForAcctAssgmt : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving plant'
  @sap.quickinfo : 'Receiving plant/issuing plant'
  IssuingOrReceivingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving stor. loc.'
  @sap.quickinfo : 'Receiving/issuing storage location'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clearing CoCode'
  @sap.quickinfo : 'Clearing company code'
  ResvnVerificationCompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  UserID : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Created On'
  @sap.quickinfo : 'Creation Date'
  CreationDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Last Changed By User'
  LastChangedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed On'
  LastChangeDateTime : Timestamp;
  to_ControllingArea : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_ControllingArea {  };
  to_CostCenter : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_CostCenter {  };
  to_Customer : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_Customer {  };
  to_GoodsMovementType : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_GoodsMovementType {  };
  to_Order : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_LogisticsOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Unit of Measure'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_UnitOfMeasure {
  @sap.text : 'UnitOfMeasure_Text'
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitOfMeasure_Text : String(30);
  @sap.label : 'Internal SAP Code'
  @sap.quickinfo : 'Unit of Measurement, Internal SAP Code (No Conversion)'
  UnitOfMeasureSAPCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code'
  @sap.quickinfo : 'ISO Code for Unit of Measurement'
  UnitOfMeasureISOCode : String(3);
  @sap.label : 'Primary code'
  @sap.quickinfo : 'Selection field for conversion from ISO code to int. code'
  IsPrimaryUnitForISOCode : Boolean;
  @sap.label : 'Decimal Rounding'
  @sap.quickinfo : 'No. of decimal places for rounding'
  UnitOfMeasureNumberOfDecimals : Integer;
  @sap.label : 'Commercial Unit'
  @sap.quickinfo : 'Commercial measurement unit ID'
  UnitOfMeasureIsCommercial : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dimension'
  @sap.quickinfo : 'Dimension key'
  UnitOfMeasureDimension : String(6);
  @sap.label : 'Numerator'
  @sap.quickinfo : 'Numerator for conversion to SI unit'
  SIUnitCnvrsnRateNumerator : Integer;
  @sap.label : 'Denominator'
  @sap.quickinfo : 'Denominator for conversion into SI unit'
  SIUnitCnvrsnRateDenominator : Integer;
  @sap.label : 'Exponent'
  @sap.quickinfo : 'base ten exponent for conversion to SI unit'
  SIUnitCnvrsnRateExponent : Integer;
  @sap.label : 'Additive constant'
  @sap.quickinfo : 'Additive constant for conversion to SI unit'
  SIUnitCnvrsnAdditiveValue : Decimal(9, 6);
  @sap.label : 'Exp. 10 Floating Pt'
  @sap.quickinfo : 'Exponent of 10 for Floating Point Format'
  UnitOfMeasureDspExponent : Integer;
  @sap.label : 'Decimal Places'
  @sap.quickinfo : 'Number of Decimal Places for Number Display'
  UnitOfMeasureDspNmbrOfDcmls : Integer;
  @sap.unit : 'UnitOfMeasureTemperatureUnit'
  @sap.label : 'Temperature'
  UnitOfMeasureTemperature : Double;
  @sap.label : 'Temperature unit'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasureTemperatureUnit : String(3);
  @sap.unit : 'UnitOfMeasurePressureUnit'
  @sap.label : 'Pressure Value'
  UnitOfMeasurePressure : Double;
  @sap.label : 'Unit of Pressure'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasurePressureUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_I_ARUN_BDBSSUMQTY_CDS'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.ZZ1_I_ARUN_BDBSSUMQTY_CDS {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  ReservNum : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reservation Item'
  @sap.quickinfo : 'Item number of Reservation'
  ReservItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseunit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Storage Location'
  StorageLocation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'MaterialBaseunit'
  @sap.label : 'TotalAllocQty'
  @sap.filterable : 'false'
  TotalAllocQty : Decimal(13, 3);
  to_ZZ1_ManufactoringOrder_1 : Association to many ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.ZZ1_ManufactoringOrder_1 {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
entity ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.ZZ1_ManufactoringOrder_1 {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'ManufacturingOrderText'
  @sap.label : 'Manufacturing Order'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order ID'
  ManufacturingOrder : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Text'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Text'
  ManufacturingOrderText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MfgOrderType/ManufacturingOrderType_Text'
  @sap.label : 'Order Type'
  @sap.heading : ''
  @sap.value.list : 'standard'
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Creation Date'
  @sap.heading : ''
  CreationDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Entered By'
  @sap.heading : ''
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.heading : ''
  @sap.quickinfo : 'Material Number for Order'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Product'
  @sap.heading : ''
  @sap.quickinfo : 'Product Number'
  @sap.value.list : 'standard'
  Product : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Company Code'
  @sap.heading : ''
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planned Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned Start Date'
  MfgOrderPlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduled Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Scheduled Start Date'
  MfgOrderScheduledStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduled End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Scheduled End Date'
  MfgOrderScheduledEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Confirmed End Date'
  MfgOrderConfirmedEndDate : Date;
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Total Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned Total Quantity'
  @sap.filterable : 'false'
  MfgOrderPlannedTotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scrap Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned Scrap Quantity'
  @sap.filterable : 'false'
  MfgOrderPlannedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'GR Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Quantity of Goods Received for the Order Item'
  @sap.filterable : 'false'
  ActualDeliveredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season Year'
  @sap.heading : ''
  ProductSeasonYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season'
  @sap.heading : ''
  ProductSeason : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  MasterProductionOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collection'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Collection'
  ProductCollection : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Theme'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Theme'
  ProductTheme : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Group'
  @sap.heading : ''
  MaterialGroup : String(9);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  MasterProductionOrder_1 : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  FshMprodOrd : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Combined Prod. Order'
  @sap.heading : ''
  @sap.quickinfo : 'Combined Master Production Order'
  CprodOrd : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reservation'
  @sap.heading : ''
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  @sap.value.list : 'standard'
  Reservation : String(10);
  to_MfgOrderType : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_MfgOrderType {  };
  to_Reservation : Association to ZZ1_I_ARUN_BDBSSUMQTY_CDS_CDS.I_ReservationDocumentHeader {  };
};

