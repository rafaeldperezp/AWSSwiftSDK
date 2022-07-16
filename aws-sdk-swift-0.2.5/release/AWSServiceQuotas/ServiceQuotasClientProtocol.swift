// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// With Service Quotas, you can view and manage your quotas easily as your AWS workloads grow. Quotas, also referred to as limits, are the maximum number of resources that you can create in your AWS account. For more information, see the [Service Quotas User Guide](https://docs.aws.amazon.com/servicequotas/latest/userguide/).
public protocol ServiceQuotasClientProtocol {
    /// Associates your quota request template with your organization. When a new account is created in your organization, the quota increase requests in the template are automatically applied to the account. You can add a quota increase request for any adjustable quota to your template.
    func associateServiceQuotaTemplate(input: AssociateServiceQuotaTemplateInput) async throws -> AssociateServiceQuotaTemplateOutputResponse
    /// Deletes the quota increase request for the specified quota from your quota request template.
    func deleteServiceQuotaIncreaseRequestFromTemplate(input: DeleteServiceQuotaIncreaseRequestFromTemplateInput) async throws -> DeleteServiceQuotaIncreaseRequestFromTemplateOutputResponse
    /// Disables your quota request template. After a template is disabled, the quota increase requests in the template are not applied to new accounts in your organization. Disabling a quota request template does not apply its quota increase requests.
    func disassociateServiceQuotaTemplate(input: DisassociateServiceQuotaTemplateInput) async throws -> DisassociateServiceQuotaTemplateOutputResponse
    /// Retrieves the status of the association for the quota request template.
    func getAssociationForServiceQuotaTemplate(input: GetAssociationForServiceQuotaTemplateInput) async throws -> GetAssociationForServiceQuotaTemplateOutputResponse
    /// Retrieves the default value for the specified quota. The default value does not reflect any quota increases.
    func getAWSDefaultServiceQuota(input: GetAWSDefaultServiceQuotaInput) async throws -> GetAWSDefaultServiceQuotaOutputResponse
    /// Retrieves information about the specified quota increase request.
    func getRequestedServiceQuotaChange(input: GetRequestedServiceQuotaChangeInput) async throws -> GetRequestedServiceQuotaChangeOutputResponse
    /// Retrieves the applied quota value for the specified quota. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.
    func getServiceQuota(input: GetServiceQuotaInput) async throws -> GetServiceQuotaOutputResponse
    /// Retrieves information about the specified quota increase request in your quota request template.
    func getServiceQuotaIncreaseRequestFromTemplate(input: GetServiceQuotaIncreaseRequestFromTemplateInput) async throws -> GetServiceQuotaIncreaseRequestFromTemplateOutputResponse
    /// Lists the default values for the quotas for the specified AWS service. A default value does not reflect any quota increases.
    func listAWSDefaultServiceQuotas(input: ListAWSDefaultServiceQuotasInput) async throws -> ListAWSDefaultServiceQuotasOutputResponse
    /// Retrieves the quota increase requests for the specified service.
    func listRequestedServiceQuotaChangeHistory(input: ListRequestedServiceQuotaChangeHistoryInput) async throws -> ListRequestedServiceQuotaChangeHistoryOutputResponse
    /// Retrieves the quota increase requests for the specified quota.
    func listRequestedServiceQuotaChangeHistoryByQuota(input: ListRequestedServiceQuotaChangeHistoryByQuotaInput) async throws -> ListRequestedServiceQuotaChangeHistoryByQuotaOutputResponse
    /// Lists the quota increase requests in the specified quota request template.
    func listServiceQuotaIncreaseRequestsInTemplate(input: ListServiceQuotaIncreaseRequestsInTemplateInput) async throws -> ListServiceQuotaIncreaseRequestsInTemplateOutputResponse
    /// Lists the applied quota values for the specified AWS service. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.
    func listServiceQuotas(input: ListServiceQuotasInput) async throws -> ListServiceQuotasOutputResponse
    /// Lists the names and codes for the services integrated with Service Quotas.
    func listServices(input: ListServicesInput) async throws -> ListServicesOutputResponse
    /// Returns a list of the tags assigned to the specified applied quota.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds a quota increase request to your quota request template.
    func putServiceQuotaIncreaseRequestIntoTemplate(input: PutServiceQuotaIncreaseRequestIntoTemplateInput) async throws -> PutServiceQuotaIncreaseRequestIntoTemplateOutputResponse
    /// Submits a quota increase request for the specified quota.
    func requestServiceQuotaIncrease(input: RequestServiceQuotaIncreaseInput) async throws -> RequestServiceQuotaIncreaseOutputResponse
    /// Adds tags to the specified applied quota. You can include one or more tags to add to the quota.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from the specified applied quota. You can specify one or more tags to remove.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public enum ServiceQuotasClientTypes {}