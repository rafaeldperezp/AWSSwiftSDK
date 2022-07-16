// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Backup Backup is a unified backup service designed to protect Amazon Web Services services and their associated data. Backup simplifies the creation, migration, restoration, and deletion of backups, while also providing reporting and auditing.
public protocol BackupClientProtocol {
    /// Creates a backup plan using a backup plan name and backup rules. A backup plan is a document that contains information that Backup uses to schedule tasks that create recovery points for resources. If you call CreateBackupPlan with a plan that already exists, you receive an AlreadyExistsException exception.
    func createBackupPlan(input: CreateBackupPlanInput) async throws -> CreateBackupPlanOutputResponse
    /// Creates a JSON document that specifies a set of resources to assign to a backup plan. For examples, see [Assigning resources programmatically](https://docs.aws.amazon.com/assigning-resources.html#assigning-resources-json).
    func createBackupSelection(input: CreateBackupSelectionInput) async throws -> CreateBackupSelectionOutputResponse
    /// Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID. Do not include sensitive data, such as passport numbers, in the name of a backup vault.
    func createBackupVault(input: CreateBackupVaultInput) async throws -> CreateBackupVaultOutputResponse
    /// Creates a framework with one or more controls. A framework is a collection of controls that you can use to evaluate your backup practices. By using pre-built customizable controls to define your policies, you can evaluate whether your backup practices comply with your policies and which resources are not yet in compliance.
    func createFramework(input: CreateFrameworkInput) async throws -> CreateFrameworkOutputResponse
    /// Creates a report plan. A report plan is a document that contains information about the contents of the report and where Backup will deliver it. If you call CreateReportPlan with a plan that already exists, you receive an AlreadyExistsException exception.
    func createReportPlan(input: CreateReportPlanInput) async throws -> CreateReportPlanOutputResponse
    /// Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.
    func deleteBackupPlan(input: DeleteBackupPlanInput) async throws -> DeleteBackupPlanOutputResponse
    /// Deletes the resource selection associated with a backup plan that is specified by the SelectionId.
    func deleteBackupSelection(input: DeleteBackupSelectionInput) async throws -> DeleteBackupSelectionOutputResponse
    /// Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.
    func deleteBackupVault(input: DeleteBackupVaultInput) async throws -> DeleteBackupVaultOutputResponse
    /// Deletes the policy document that manages permissions on a backup vault.
    func deleteBackupVaultAccessPolicy(input: DeleteBackupVaultAccessPolicyInput) async throws -> DeleteBackupVaultAccessPolicyOutputResponse
    /// Deletes Backup Vault Lock from a backup vault specified by a backup vault name. If the Vault Lock configuration is immutable, then you cannot delete Vault Lock using API operations, and you will receive an InvalidRequestException if you attempt to do so. For more information, see [Vault Lock](https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html) in the Backup Developer Guide.
    func deleteBackupVaultLockConfiguration(input: DeleteBackupVaultLockConfigurationInput) async throws -> DeleteBackupVaultLockConfigurationOutputResponse
    /// Deletes event notifications for the specified backup vault.
    func deleteBackupVaultNotifications(input: DeleteBackupVaultNotificationsInput) async throws -> DeleteBackupVaultNotificationsOutputResponse
    /// Deletes the framework specified by a framework name.
    func deleteFramework(input: DeleteFrameworkInput) async throws -> DeleteFrameworkOutputResponse
    /// Deletes the recovery point specified by a recovery point ID. If the recovery point ID belongs to a continuous backup, calling this endpoint deletes the existing continuous backup and stops future continuous backup.
    func deleteRecoveryPoint(input: DeleteRecoveryPointInput) async throws -> DeleteRecoveryPointOutputResponse
    /// Deletes the report plan specified by a report plan name.
    func deleteReportPlan(input: DeleteReportPlanInput) async throws -> DeleteReportPlanOutputResponse
    /// Returns backup job details for the specified BackupJobId.
    func describeBackupJob(input: DescribeBackupJobInput) async throws -> DescribeBackupJobOutputResponse
    /// Returns metadata about a backup vault specified by its name.
    func describeBackupVault(input: DescribeBackupVaultInput) async throws -> DescribeBackupVaultOutputResponse
    /// Returns metadata associated with creating a copy of a resource.
    func describeCopyJob(input: DescribeCopyJobInput) async throws -> DescribeCopyJobOutputResponse
    /// Returns the framework details for the specified FrameworkName.
    func describeFramework(input: DescribeFrameworkInput) async throws -> DescribeFrameworkOutputResponse
    /// Describes whether the Amazon Web Services account is opted in to cross-account backup. Returns an error if the account is not a member of an Organizations organization. Example: describe-global-settings --region us-west-2
    func describeGlobalSettings(input: DescribeGlobalSettingsInput) async throws -> DescribeGlobalSettingsOutputResponse
    /// Returns information about a saved resource, including the last time it was backed up, its Amazon Resource Name (ARN), and the Amazon Web Services service type of the saved resource.
    func describeProtectedResource(input: DescribeProtectedResourceInput) async throws -> DescribeProtectedResourceOutputResponse
    /// Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.
    func describeRecoveryPoint(input: DescribeRecoveryPointInput) async throws -> DescribeRecoveryPointOutputResponse
    /// Returns the current service opt-in settings for the Region. If service opt-in is enabled for a service, Backup tries to protect that service's resources in this Region, when the resource is included in an on-demand backup or scheduled backup plan. Otherwise, Backup does not try to protect that service's resources in this Region.
    func describeRegionSettings(input: DescribeRegionSettingsInput) async throws -> DescribeRegionSettingsOutputResponse
    /// Returns the details associated with creating a report as specified by its ReportJobId.
    func describeReportJob(input: DescribeReportJobInput) async throws -> DescribeReportJobOutputResponse
    /// Returns a list of all report plans for an Amazon Web Services account and Amazon Web Services Region.
    func describeReportPlan(input: DescribeReportPlanInput) async throws -> DescribeReportPlanOutputResponse
    /// Returns metadata associated with a restore job that is specified by a job ID.
    func describeRestoreJob(input: DescribeRestoreJobInput) async throws -> DescribeRestoreJobOutputResponse
    /// Deletes the specified continuous backup recovery point from Backup and releases control of that continuous backup to the source service, such as Amazon RDS. The source service will continue to create and retain continuous backups using the lifecycle that you specified in your original backup plan. Does not support snapshot backup recovery points.
    func disassociateRecoveryPoint(input: DisassociateRecoveryPointInput) async throws -> DisassociateRecoveryPointOutputResponse
    /// Returns the backup plan that is specified by the plan ID as a backup template.
    func exportBackupPlanTemplate(input: ExportBackupPlanTemplateInput) async throws -> ExportBackupPlanTemplateOutputResponse
    /// Returns BackupPlan details for the specified BackupPlanId. The details are the body of a backup plan in JSON format, in addition to plan metadata.
    func getBackupPlan(input: GetBackupPlanInput) async throws -> GetBackupPlanOutputResponse
    /// Returns a valid JSON document specifying a backup plan or an error.
    func getBackupPlanFromJSON(input: GetBackupPlanFromJSONInput) async throws -> GetBackupPlanFromJSONOutputResponse
    /// Returns the template specified by its templateId as a backup plan.
    func getBackupPlanFromTemplate(input: GetBackupPlanFromTemplateInput) async throws -> GetBackupPlanFromTemplateOutputResponse
    /// Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.
    func getBackupSelection(input: GetBackupSelectionInput) async throws -> GetBackupSelectionOutputResponse
    /// Returns the access policy document that is associated with the named backup vault.
    func getBackupVaultAccessPolicy(input: GetBackupVaultAccessPolicyInput) async throws -> GetBackupVaultAccessPolicyOutputResponse
    /// Returns event notifications for the specified backup vault.
    func getBackupVaultNotifications(input: GetBackupVaultNotificationsInput) async throws -> GetBackupVaultNotificationsOutputResponse
    /// Returns a set of metadata key-value pairs that were used to create the backup.
    func getRecoveryPointRestoreMetadata(input: GetRecoveryPointRestoreMetadataInput) async throws -> GetRecoveryPointRestoreMetadataOutputResponse
    /// Returns the Amazon Web Services resource types supported by Backup.
    func getSupportedResourceTypes(input: GetSupportedResourceTypesInput) async throws -> GetSupportedResourceTypesOutputResponse
    /// Returns a list of existing backup jobs for an authenticated account for the last 30 days. For a longer period of time, consider using these [monitoring tools](https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html).
    func listBackupJobs(input: ListBackupJobsInput) async throws -> ListBackupJobsOutputResponse
    /// Returns a list of all active backup plans for an authenticated account. The list contains information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    func listBackupPlans(input: ListBackupPlansInput) async throws -> ListBackupPlansOutputResponse
    /// Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    func listBackupPlanTemplates(input: ListBackupPlanTemplatesInput) async throws -> ListBackupPlanTemplatesOutputResponse
    /// Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    func listBackupPlanVersions(input: ListBackupPlanVersionsInput) async throws -> ListBackupPlanVersionsOutputResponse
    /// Returns an array containing metadata of the resources associated with the target backup plan.
    func listBackupSelections(input: ListBackupSelectionsInput) async throws -> ListBackupSelectionsOutputResponse
    /// Returns a list of recovery point storage containers along with information about them.
    func listBackupVaults(input: ListBackupVaultsInput) async throws -> ListBackupVaultsOutputResponse
    /// Returns metadata about your copy jobs.
    func listCopyJobs(input: ListCopyJobsInput) async throws -> ListCopyJobsOutputResponse
    /// Returns a list of all frameworks for an Amazon Web Services account and Amazon Web Services Region.
    func listFrameworks(input: ListFrameworksInput) async throws -> ListFrameworksOutputResponse
    /// Returns an array of resources successfully backed up by Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    func listProtectedResources(input: ListProtectedResourcesInput) async throws -> ListProtectedResourcesOutputResponse
    /// Returns detailed information about the recovery points stored in a backup vault.
    func listRecoveryPointsByBackupVault(input: ListRecoveryPointsByBackupVaultInput) async throws -> ListRecoveryPointsByBackupVaultOutputResponse
    /// Returns detailed information about all the recovery points of the type specified by a resource Amazon Resource Name (ARN). For Amazon EFS and Amazon EC2, this action only lists recovery points created by Backup.
    func listRecoveryPointsByResource(input: ListRecoveryPointsByResourceInput) async throws -> ListRecoveryPointsByResourceOutputResponse
    /// Returns details about your report jobs.
    func listReportJobs(input: ListReportJobsInput) async throws -> ListReportJobsOutputResponse
    /// Returns a list of your report plans. For detailed information about a single report plan, use DescribeReportPlan.
    func listReportPlans(input: ListReportPlansInput) async throws -> ListReportPlansOutputResponse
    /// Returns a list of jobs that Backup initiated to restore a saved resource, including details about the recovery process.
    func listRestoreJobs(input: ListRestoreJobsInput) async throws -> ListRestoreJobsOutputResponse
    /// Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault. ListTags are currently only supported with Amazon EFS backups.
    func listTags(input: ListTagsInput) async throws -> ListTagsOutputResponse
    /// Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.
    func putBackupVaultAccessPolicy(input: PutBackupVaultAccessPolicyInput) async throws -> PutBackupVaultAccessPolicyOutputResponse
    /// Applies Backup Vault Lock to a backup vault, preventing attempts to delete any recovery point stored in or created in a backup vault. Vault Lock also prevents attempts to update the lifecycle policy that controls the retention period of any recovery point currently stored in a backup vault. If specified, Vault Lock enforces a minimum and maximum retention period for future backup and copy jobs that target a backup vault. Backup Vault Lock has yet to receive a third-party assessment for SEC 17a-4(f) and CFTC.
    func putBackupVaultLockConfiguration(input: PutBackupVaultLockConfigurationInput) async throws -> PutBackupVaultLockConfigurationOutputResponse
    /// Turns on notifications on a backup vault for the specified topic and events.
    func putBackupVaultNotifications(input: PutBackupVaultNotificationsInput) async throws -> PutBackupVaultNotificationsOutputResponse
    /// Starts an on-demand backup job for the specified resource.
    func startBackupJob(input: StartBackupJobInput) async throws -> StartBackupJobOutputResponse
    /// Starts a job to create a one-time copy of the specified resource. Does not support continuous backups.
    func startCopyJob(input: StartCopyJobInput) async throws -> StartCopyJobOutputResponse
    /// Starts an on-demand report job for the specified report plan.
    func startReportJob(input: StartReportJobInput) async throws -> StartReportJobOutputResponse
    /// Recovers the saved resource identified by an Amazon Resource Name (ARN).
    func startRestoreJob(input: StartRestoreJobInput) async throws -> StartRestoreJobOutputResponse
    /// Attempts to cancel a job to create a one-time backup of a resource.
    func stopBackupJob(input: StopBackupJobInput) async throws -> StopBackupJobOutputResponse
    /// Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an existing backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.
    func updateBackupPlan(input: UpdateBackupPlanInput) async throws -> UpdateBackupPlanOutputResponse
    /// Updates an existing framework identified by its FrameworkName with the input document in JSON format.
    func updateFramework(input: UpdateFrameworkInput) async throws -> UpdateFrameworkOutputResponse
    /// Updates whether the Amazon Web Services account is opted in to cross-account backup. Returns an error if the account is not an Organizations management account. Use the DescribeGlobalSettings API to determine the current settings.
    func updateGlobalSettings(input: UpdateGlobalSettingsInput) async throws -> UpdateGlobalSettingsOutputResponse
    /// Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. Backup transitions and expires backups automatically according to the lifecycle that you define. Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. Only Amazon EFS file system backups can be transitioned to cold storage. Does not support continuous backups.
    func updateRecoveryPointLifecycle(input: UpdateRecoveryPointLifecycleInput) async throws -> UpdateRecoveryPointLifecycleOutputResponse
    /// Updates the current service opt-in settings for the Region. If service-opt-in is enabled for a service, Backup tries to protect that service's resources in this Region, when the resource is included in an on-demand backup or scheduled backup plan. Otherwise, Backup does not try to protect that service's resources in this Region. Use the DescribeRegionSettings API to determine the resource types that are supported.
    func updateRegionSettings(input: UpdateRegionSettingsInput) async throws -> UpdateRegionSettingsOutputResponse
    /// Updates an existing report plan identified by its ReportPlanName with the input document in JSON format.
    func updateReportPlan(input: UpdateReportPlanInput) async throws -> UpdateReportPlanOutputResponse
}

public enum BackupClientTypes {}
