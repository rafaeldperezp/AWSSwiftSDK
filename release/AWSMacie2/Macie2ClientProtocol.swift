// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Macie is a fully managed data security and data privacy service that uses machine learning and pattern matching to discover and protect your sensitive data in AWS. Macie automates the discovery of sensitive data, such as PII and intellectual property, to provide you with insight into the data that your organization stores in AWS. Macie also provides an inventory of your Amazon S3 buckets, which it continually monitors for you. If Macie detects sensitive data or potential data access issues, it generates detailed findings for you to review and act upon as necessary.
public protocol Macie2ClientProtocol {
    /// Accepts an Amazon Macie membership invitation that was received from a specific account.
    func acceptInvitation(input: AcceptInvitationInput) async throws -> AcceptInvitationOutputResponse
    /// Retrieves information about one or more custom data identifiers.
    func batchGetCustomDataIdentifiers(input: BatchGetCustomDataIdentifiersInput) async throws -> BatchGetCustomDataIdentifiersOutputResponse
    /// Creates and defines the settings for a classification job.
    func createClassificationJob(input: CreateClassificationJobInput) async throws -> CreateClassificationJobOutputResponse
    /// Creates and defines the criteria and other settings for a custom data identifier.
    func createCustomDataIdentifier(input: CreateCustomDataIdentifierInput) async throws -> CreateCustomDataIdentifierOutputResponse
    /// Creates and defines the criteria and other settings for a findings filter.
    func createFindingsFilter(input: CreateFindingsFilterInput) async throws -> CreateFindingsFilterOutputResponse
    /// Sends an Amazon Macie membership invitation to one or more accounts.
    func createInvitations(input: CreateInvitationsInput) async throws -> CreateInvitationsOutputResponse
    /// Associates an account with an Amazon Macie administrator account.
    func createMember(input: CreateMemberInput) async throws -> CreateMemberOutputResponse
    /// Creates sample findings.
    func createSampleFindings(input: CreateSampleFindingsInput) async throws -> CreateSampleFindingsOutputResponse
    /// Declines Amazon Macie membership invitations that were received from specific accounts.
    func declineInvitations(input: DeclineInvitationsInput) async throws -> DeclineInvitationsOutputResponse
    /// Soft deletes a custom data identifier.
    func deleteCustomDataIdentifier(input: DeleteCustomDataIdentifierInput) async throws -> DeleteCustomDataIdentifierOutputResponse
    /// Deletes a findings filter.
    func deleteFindingsFilter(input: DeleteFindingsFilterInput) async throws -> DeleteFindingsFilterOutputResponse
    /// Deletes Amazon Macie membership invitations that were received from specific accounts.
    func deleteInvitations(input: DeleteInvitationsInput) async throws -> DeleteInvitationsOutputResponse
    /// Deletes the association between an Amazon Macie administrator account and an account.
    func deleteMember(input: DeleteMemberInput) async throws -> DeleteMemberOutputResponse
    /// Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.
    func describeBuckets(input: DescribeBucketsInput) async throws -> DescribeBucketsOutputResponse
    /// Retrieves the status and settings for a classification job.
    func describeClassificationJob(input: DescribeClassificationJobInput) async throws -> DescribeClassificationJobOutputResponse
    /// Retrieves the Amazon Macie configuration settings for an organization in Organizations.
    func describeOrganizationConfiguration(input: DescribeOrganizationConfigurationInput) async throws -> DescribeOrganizationConfigurationOutputResponse
    /// Disables Amazon Macie and deletes all settings and resources for a Macie account.
    func disableMacie(input: DisableMacieInput) async throws -> DisableMacieOutputResponse
    /// Disables an account as the delegated Amazon Macie administrator account for an organization in Organizations.
    func disableOrganizationAdminAccount(input: DisableOrganizationAdminAccountInput) async throws -> DisableOrganizationAdminAccountOutputResponse
    /// Disassociates a member account from its Amazon Macie administrator account.
    func disassociateFromAdministratorAccount(input: DisassociateFromAdministratorAccountInput) async throws -> DisassociateFromAdministratorAccountOutputResponse
    /// (Deprecated) Disassociates a member account from its Amazon Macie administrator account. This operation has been replaced by the DisassociateFromAdministratorAccount operation.
    func disassociateFromMasterAccount(input: DisassociateFromMasterAccountInput) async throws -> DisassociateFromMasterAccountOutputResponse
    /// Disassociates an Amazon Macie administrator account from a member account.
    func disassociateMember(input: DisassociateMemberInput) async throws -> DisassociateMemberOutputResponse
    /// Enables Amazon Macie and specifies the configuration settings for a Macie account.
    func enableMacie(input: EnableMacieInput) async throws -> EnableMacieOutputResponse
    /// Designates an account as the delegated Amazon Macie administrator account for an organization in Organizations.
    func enableOrganizationAdminAccount(input: EnableOrganizationAdminAccountInput) async throws -> EnableOrganizationAdminAccountOutputResponse
    /// Retrieves information about the Amazon Macie administrator account for an account.
    func getAdministratorAccount(input: GetAdministratorAccountInput) async throws -> GetAdministratorAccountOutputResponse
    /// Retrieves (queries) aggregated statistical data about S3 buckets that Amazon Macie monitors and analyzes.
    func getBucketStatistics(input: GetBucketStatisticsInput) async throws -> GetBucketStatisticsOutputResponse
    /// Retrieves the configuration settings for storing data classification results.
    func getClassificationExportConfiguration(input: GetClassificationExportConfigurationInput) async throws -> GetClassificationExportConfigurationOutputResponse
    /// Retrieves the criteria and other settings for a custom data identifier.
    func getCustomDataIdentifier(input: GetCustomDataIdentifierInput) async throws -> GetCustomDataIdentifierOutputResponse
    /// Retrieves the details of one or more findings.
    func getFindings(input: GetFindingsInput) async throws -> GetFindingsOutputResponse
    /// Retrieves the criteria and other settings for a findings filter.
    func getFindingsFilter(input: GetFindingsFilterInput) async throws -> GetFindingsFilterOutputResponse
    /// Retrieves the configuration settings for publishing findings to Security Hub.
    func getFindingsPublicationConfiguration(input: GetFindingsPublicationConfigurationInput) async throws -> GetFindingsPublicationConfigurationOutputResponse
    /// Retrieves (queries) aggregated statistical data about findings.
    func getFindingStatistics(input: GetFindingStatisticsInput) async throws -> GetFindingStatisticsOutputResponse
    /// Retrieves the count of Amazon Macie membership invitations that were received by an account.
    func getInvitationsCount(input: GetInvitationsCountInput) async throws -> GetInvitationsCountOutputResponse
    /// Retrieves the current status and configuration settings for an Amazon Macie account.
    func getMacieSession(input: GetMacieSessionInput) async throws -> GetMacieSessionOutputResponse
    /// (Deprecated) Retrieves information about the Amazon Macie administrator account for an account. This operation has been replaced by the GetAdministratorAccount operation.
    func getMasterAccount(input: GetMasterAccountInput) async throws -> GetMasterAccountOutputResponse
    /// Retrieves information about an account that's associated with an Amazon Macie administrator account.
    func getMember(input: GetMemberInput) async throws -> GetMemberOutputResponse
    /// Retrieves (queries) quotas and aggregated usage data for one or more accounts.
    func getUsageStatistics(input: GetUsageStatisticsInput) async throws -> GetUsageStatisticsOutputResponse
    /// Retrieves (queries) aggregated usage data for an account.
    func getUsageTotals(input: GetUsageTotalsInput) async throws -> GetUsageTotalsOutputResponse
    /// Retrieves a subset of information about one or more classification jobs.
    func listClassificationJobs(input: ListClassificationJobsInput) async throws -> ListClassificationJobsOutputResponse
    /// Retrieves a subset of information about all the custom data identifiers for an account.
    func listCustomDataIdentifiers(input: ListCustomDataIdentifiersInput) async throws -> ListCustomDataIdentifiersOutputResponse
    /// Retrieves a subset of information about one or more findings.
    func listFindings(input: ListFindingsInput) async throws -> ListFindingsOutputResponse
    /// Retrieves a subset of information about all the findings filters for an account.
    func listFindingsFilters(input: ListFindingsFiltersInput) async throws -> ListFindingsFiltersOutputResponse
    /// Retrieves information about the Amazon Macie membership invitations that were received by an account.
    func listInvitations(input: ListInvitationsInput) async throws -> ListInvitationsOutputResponse
    /// Retrieves information about all the managed data identifiers that Amazon Macie currently provides.
    func listManagedDataIdentifiers(input: ListManagedDataIdentifiersInput) async throws -> ListManagedDataIdentifiersOutputResponse
    /// Retrieves information about the accounts that are associated with an Amazon Macie administrator account.
    func listMembers(input: ListMembersInput) async throws -> ListMembersOutputResponse
    /// Retrieves information about the delegated Amazon Macie administrator account for an organization in Organizations.
    func listOrganizationAdminAccounts(input: ListOrganizationAdminAccountsInput) async throws -> ListOrganizationAdminAccountsOutputResponse
    /// Retrieves the tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates or updates the configuration settings for storing data classification results.
    func putClassificationExportConfiguration(input: PutClassificationExportConfigurationInput) async throws -> PutClassificationExportConfigurationOutputResponse
    /// Updates the configuration settings for publishing findings to Security Hub.
    func putFindingsPublicationConfiguration(input: PutFindingsPublicationConfigurationInput) async throws -> PutFindingsPublicationConfigurationOutputResponse
    /// Retrieves (queries) statistical data and other information about Amazon Web Services resources that Amazon Macie monitors and analyzes.
    func searchResources(input: SearchResourcesInput) async throws -> SearchResourcesOutputResponse
    /// Adds or updates one or more tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Tests a custom data identifier.
    func testCustomDataIdentifier(input: TestCustomDataIdentifierInput) async throws -> TestCustomDataIdentifierOutputResponse
    /// Removes one or more tags (keys and values) from a classification job, custom data identifier, findings filter, or member account.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Changes the status of a classification job.
    func updateClassificationJob(input: UpdateClassificationJobInput) async throws -> UpdateClassificationJobOutputResponse
    /// Updates the criteria and other settings for a findings filter.
    func updateFindingsFilter(input: UpdateFindingsFilterInput) async throws -> UpdateFindingsFilterOutputResponse
    /// Suspends or re-enables Amazon Macie, or updates the configuration settings for a Macie account.
    func updateMacieSession(input: UpdateMacieSessionInput) async throws -> UpdateMacieSessionOutputResponse
    /// Enables an Amazon Macie administrator to suspend or re-enable Macie for a member account.
    func updateMemberSession(input: UpdateMemberSessionInput) async throws -> UpdateMemberSessionOutputResponse
    /// Updates the Amazon Macie configuration settings for an organization in Organizations.
    func updateOrganizationConfiguration(input: UpdateOrganizationConfigurationInput) async throws -> UpdateOrganizationConfigurationOutputResponse
}

public enum Macie2ClientTypes {}
