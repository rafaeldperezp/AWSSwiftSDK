// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This is the Firewall Manager API Reference. This guide is for developers who need detailed information about the Firewall Manager API actions, data types, and errors. For detailed information about Firewall Manager features, see the [Firewall Manager Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html). Some API actions require explicit resource permissions. For information, see the developer guide topic [Firewall Manager required permissions for API actions](https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html).
public protocol FmsClientProtocol {
    /// Sets the Firewall Manager administrator account. The account must be a member of the organization in Organizations whose resources you want to protect. Firewall Manager sets the permissions that allow the account to administer your Firewall Manager policies. The account that you associate with Firewall Manager is called the Firewall Manager administrator account.
    func associateAdminAccount(input: AssociateAdminAccountInput) async throws -> AssociateAdminAccountOutputResponse
    /// Permanently deletes an Firewall Manager applications list.
    func deleteAppsList(input: DeleteAppsListInput) async throws -> DeleteAppsListOutputResponse
    /// Deletes an Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record Firewall Manager SNS logs.
    func deleteNotificationChannel(input: DeleteNotificationChannelInput) async throws -> DeleteNotificationChannelOutputResponse
    /// Permanently deletes an Firewall Manager policy.
    func deletePolicy(input: DeletePolicyInput) async throws -> DeletePolicyOutputResponse
    /// Permanently deletes an Firewall Manager protocols list.
    func deleteProtocolsList(input: DeleteProtocolsListInput) async throws -> DeleteProtocolsListOutputResponse
    /// Disassociates the account that has been set as the Firewall Manager administrator account. To set a different account as the administrator account, you must submit an AssociateAdminAccount request.
    func disassociateAdminAccount(input: DisassociateAdminAccountInput) async throws -> DisassociateAdminAccountOutputResponse
    /// Returns the Organizations account that is associated with Firewall Manager as the Firewall Manager administrator.
    func getAdminAccount(input: GetAdminAccountInput) async throws -> GetAdminAccountOutputResponse
    /// Returns information about the specified Firewall Manager applications list.
    func getAppsList(input: GetAppsListInput) async throws -> GetAppsListOutputResponse
    /// Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy.
    ///
    /// * Resources are considered noncompliant for WAF and Shield Advanced policies if the specified policy has not been applied to them.
    ///
    /// * Resources are considered noncompliant for security group policies if they are in scope of the policy, they violate one or more of the policy rules, and remediation is disabled or not possible.
    ///
    /// * Resources are considered noncompliant for Network Firewall policies if a firewall is missing in the VPC, if the firewall endpoint isn't set up in an expected Availability Zone and subnet, if a subnet created by the Firewall Manager doesn't have the expected route table, and for modifications to a firewall policy that violate the Firewall Manager policy's rules.
    ///
    /// * Resources are considered noncompliant for DNS Firewall policies if a DNS Firewall rule group is missing from the rule group associations for the VPC.
    func getComplianceDetail(input: GetComplianceDetailInput) async throws -> GetComplianceDetailOutputResponse
    /// Information about the Amazon Simple Notification Service (SNS) topic that is used to record Firewall Manager SNS logs.
    func getNotificationChannel(input: GetNotificationChannelInput) async throws -> GetNotificationChannelOutputResponse
    /// Returns information about the specified Firewall Manager policy.
    func getPolicy(input: GetPolicyInput) async throws -> GetPolicyOutputResponse
    /// If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack. Other policy types are currently unsupported.
    func getProtectionStatus(input: GetProtectionStatusInput) async throws -> GetProtectionStatusOutputResponse
    /// Returns information about the specified Firewall Manager protocols list.
    func getProtocolsList(input: GetProtocolsListInput) async throws -> GetProtocolsListOutputResponse
    /// Retrieves violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account.
    func getViolationDetails(input: GetViolationDetailsInput) async throws -> GetViolationDetailsOutputResponse
    /// Returns an array of AppsListDataSummary objects.
    func listAppsLists(input: ListAppsListsInput) async throws -> ListAppsListsOutputResponse
    /// Returns an array of PolicyComplianceStatus objects. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy.
    func listComplianceStatus(input: ListComplianceStatusInput) async throws -> ListComplianceStatusOutputResponse
    /// Returns a MemberAccounts object that lists the member accounts in the administrator's Amazon Web Services organization. The ListMemberAccounts must be submitted by the account that is set as the Firewall Manager administrator.
    func listMemberAccounts(input: ListMemberAccountsInput) async throws -> ListMemberAccountsOutputResponse
    /// Returns an array of PolicySummary objects.
    func listPolicies(input: ListPoliciesInput) async throws -> ListPoliciesOutputResponse
    /// Returns an array of ProtocolsListDataSummary objects.
    func listProtocolsLists(input: ListProtocolsListsInput) async throws -> ListProtocolsListsOutputResponse
    /// Retrieves the list of tags for the specified Amazon Web Services resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates an Firewall Manager applications list.
    func putAppsList(input: PutAppsListInput) async throws -> PutAppsListOutputResponse
    /// Designates the IAM role and Amazon Simple Notification Service (SNS) topic that Firewall Manager uses to record SNS logs. To perform this action outside of the console, you must configure the SNS topic to allow the Firewall Manager role AWSServiceRoleForFMS to publish SNS logs. For more information, see [Firewall Manager required permissions for API actions](https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html) in the Firewall Manager Developer Guide.
    func putNotificationChannel(input: PutNotificationChannelInput) async throws -> PutNotificationChannelOutputResponse
    /// Creates an Firewall Manager policy. Firewall Manager provides the following types of policies:
    ///
    /// * An WAF policy (type WAFV2), which defines rule groups to run first in the corresponding WAF web ACL and rule groups to run last in the web ACL.
    ///
    /// * An WAF Classic policy (type WAF), which defines a rule group.
    ///
    /// * A Shield Advanced policy, which applies Shield Advanced protection to specified accounts and resources.
    ///
    /// * A security group policy, which manages VPC security groups across your Amazon Web Services organization.
    ///
    /// * An Network Firewall policy, which provides firewall rules to filter network traffic in specified Amazon VPCs.
    ///
    /// * A DNS Firewall policy, which provides Route 53 Resolver DNS Firewall rules to filter DNS queries for specified VPCs.
    ///
    ///
    /// Each policy is specific to one of the types. If you want to enforce more than one policy type across accounts, create multiple policies. You can create multiple policies for each type. You must be subscribed to Shield Advanced to create a Shield Advanced policy. For more information about subscribing to Shield Advanced, see [CreateSubscription](https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html).
    func putPolicy(input: PutPolicyInput) async throws -> PutPolicyOutputResponse
    /// Creates an Firewall Manager protocols list.
    func putProtocolsList(input: PutProtocolsListInput) async throws -> PutProtocolsListOutputResponse
    /// Adds one or more tags to an Amazon Web Services resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from an Amazon Web Services resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public enum FmsClientTypes {}
