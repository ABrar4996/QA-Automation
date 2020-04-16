$password = ConvertTo-SecureString �Vinayaka420$� -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential (�amrinder_brar@mednax.com�, $password)

Invoke-ASCmd -Server:asazure://aspaaseastus2.asazure.windows.net/azprsvratanalsvc01d -Database:"DateOfService" -Credential $Cred -Query:" SELECT NON EMPTY { [Measures].[Allowed], [Measures].[Allowed_Payer], [Measures].[Payments], [Measures].[Bad_Debt_ADJ], [Measures].[CA Provision], [Measures].[Charges], [Measures].[Patient_Payments], [Measures].[Contractual_Adj], [Measures].[Inferred_Avoidable_Adjustment], [Measures].[Inferred_Pat_Pymt_From_BDA], [Measures].[Ins_Payments], [Measures].[Other_Adj], [Measures].[Pat_Pymt Count], [Measures].[Units] } ON COLUMNS FROM ( SELECT ( { [Service_Date].[DOS_Year].&[2019] } ) ON COLUMNS FROM ( SELECT ( { [AR_Types].[AR_Type].&[BILLED] } ) ON COLUMNS FROM ( SELECT ( { [PAU_Master].[OM_Division].&[EASTERN] } ) ON COLUMNS FROM [Model]))) WHERE ( [PAU_Master].[OM_Division].&[EASTERN], [AR_Types].[AR_Type].&[BILLED], [Service_Date].[DOS_Year].&[2019] )" 

