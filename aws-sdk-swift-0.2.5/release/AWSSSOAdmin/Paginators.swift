// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAccountAssignmentCreationStatusOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountAssignmentCreationStatusInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountAssignmentCreationStatusOutputResponse`
extension SsoAdminClient {
    public func listAccountAssignmentCreationStatusPaginated(input: ListAccountAssignmentCreationStatusInput) -> ClientRuntime.PaginatorSequence<ListAccountAssignmentCreationStatusInput, ListAccountAssignmentCreationStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountAssignmentCreationStatusInput, ListAccountAssignmentCreationStatusOutputResponse>(input: input, inputKey: \ListAccountAssignmentCreationStatusInput.nextToken, outputKey: \ListAccountAssignmentCreationStatusOutputResponse.nextToken, paginationFunction: self.listAccountAssignmentCreationStatus(input:))
    }
}

extension ListAccountAssignmentCreationStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountAssignmentCreationStatusInput {
        return ListAccountAssignmentCreationStatusInput(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAccountAssignmentCreationStatusPaginated`
/// to access the nested member `[SsoAdminClientTypes.AccountAssignmentOperationStatusMetadata]`
/// - Returns: `[SsoAdminClientTypes.AccountAssignmentOperationStatusMetadata]`
extension PaginatorSequence where Input == ListAccountAssignmentCreationStatusInput, Output == ListAccountAssignmentCreationStatusOutputResponse {
    func accountAssignmentsCreationStatus() async throws -> [SsoAdminClientTypes.AccountAssignmentOperationStatusMetadata] {
        return try await self.asyncCompactMap { item in item.accountAssignmentsCreationStatus }
    }
}

/// Paginate over `[ListAccountAssignmentDeletionStatusOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountAssignmentDeletionStatusInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountAssignmentDeletionStatusOutputResponse`
extension SsoAdminClient {
    public func listAccountAssignmentDeletionStatusPaginated(input: ListAccountAssignmentDeletionStatusInput) -> ClientRuntime.PaginatorSequence<ListAccountAssignmentDeletionStatusInput, ListAccountAssignmentDeletionStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountAssignmentDeletionStatusInput, ListAccountAssignmentDeletionStatusOutputResponse>(input: input, inputKey: \ListAccountAssignmentDeletionStatusInput.nextToken, outputKey: \ListAccountAssignmentDeletionStatusOutputResponse.nextToken, paginationFunction: self.listAccountAssignmentDeletionStatus(input:))
    }
}

extension ListAccountAssignmentDeletionStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountAssignmentDeletionStatusInput {
        return ListAccountAssignmentDeletionStatusInput(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAccountAssignmentDeletionStatusPaginated`
/// to access the nested member `[SsoAdminClientTypes.AccountAssignmentOperationStatusMetadata]`
/// - Returns: `[SsoAdminClientTypes.AccountAssignmentOperationStatusMetadata]`
extension PaginatorSequence where Input == ListAccountAssignmentDeletionStatusInput, Output == ListAccountAssignmentDeletionStatusOutputResponse {
    func accountAssignmentsDeletionStatus() async throws -> [SsoAdminClientTypes.AccountAssignmentOperationStatusMetadata] {
        return try await self.asyncCompactMap { item in item.accountAssignmentsDeletionStatus }
    }
}

/// Paginate over `[ListAccountAssignmentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountAssignmentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountAssignmentsOutputResponse`
extension SsoAdminClient {
    public func listAccountAssignmentsPaginated(input: ListAccountAssignmentsInput) -> ClientRuntime.PaginatorSequence<ListAccountAssignmentsInput, ListAccountAssignmentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountAssignmentsInput, ListAccountAssignmentsOutputResponse>(input: input, inputKey: \ListAccountAssignmentsInput.nextToken, outputKey: \ListAccountAssignmentsOutputResponse.nextToken, paginationFunction: self.listAccountAssignments(input:))
    }
}

extension ListAccountAssignmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountAssignmentsInput {
        return ListAccountAssignmentsInput(
            accountId: self.accountId,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAccountAssignmentsPaginated`
/// to access the nested member `[SsoAdminClientTypes.AccountAssignment]`
/// - Returns: `[SsoAdminClientTypes.AccountAssignment]`
extension PaginatorSequence where Input == ListAccountAssignmentsInput, Output == ListAccountAssignmentsOutputResponse {
    func accountAssignments() async throws -> [SsoAdminClientTypes.AccountAssignment] {
        return try await self.asyncCompactMap { item in item.accountAssignments }
    }
}

/// Paginate over `[ListAccountsForProvisionedPermissionSetOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountsForProvisionedPermissionSetInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountsForProvisionedPermissionSetOutputResponse`
extension SsoAdminClient {
    public func listAccountsForProvisionedPermissionSetPaginated(input: ListAccountsForProvisionedPermissionSetInput) -> ClientRuntime.PaginatorSequence<ListAccountsForProvisionedPermissionSetInput, ListAccountsForProvisionedPermissionSetOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountsForProvisionedPermissionSetInput, ListAccountsForProvisionedPermissionSetOutputResponse>(input: input, inputKey: \ListAccountsForProvisionedPermissionSetInput.nextToken, outputKey: \ListAccountsForProvisionedPermissionSetOutputResponse.nextToken, paginationFunction: self.listAccountsForProvisionedPermissionSet(input:))
    }
}

extension ListAccountsForProvisionedPermissionSetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsForProvisionedPermissionSetInput {
        return ListAccountsForProvisionedPermissionSetInput(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn,
            provisioningStatus: self.provisioningStatus
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAccountsForProvisionedPermissionSetPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListAccountsForProvisionedPermissionSetInput, Output == ListAccountsForProvisionedPermissionSetOutputResponse {
    func accountIds() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.accountIds }
    }
}

/// Paginate over `[ListInstancesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListInstancesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListInstancesOutputResponse`
extension SsoAdminClient {
    public func listInstancesPaginated(input: ListInstancesInput) -> ClientRuntime.PaginatorSequence<ListInstancesInput, ListInstancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInstancesInput, ListInstancesOutputResponse>(input: input, inputKey: \ListInstancesInput.nextToken, outputKey: \ListInstancesOutputResponse.nextToken, paginationFunction: self.listInstances(input:))
    }
}

extension ListInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstancesInput {
        return ListInstancesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listInstancesPaginated`
/// to access the nested member `[SsoAdminClientTypes.InstanceMetadata]`
/// - Returns: `[SsoAdminClientTypes.InstanceMetadata]`
extension PaginatorSequence where Input == ListInstancesInput, Output == ListInstancesOutputResponse {
    func instances() async throws -> [SsoAdminClientTypes.InstanceMetadata] {
        return try await self.asyncCompactMap { item in item.instances }
    }
}

/// Paginate over `[ListManagedPoliciesInPermissionSetOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListManagedPoliciesInPermissionSetInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListManagedPoliciesInPermissionSetOutputResponse`
extension SsoAdminClient {
    public func listManagedPoliciesInPermissionSetPaginated(input: ListManagedPoliciesInPermissionSetInput) -> ClientRuntime.PaginatorSequence<ListManagedPoliciesInPermissionSetInput, ListManagedPoliciesInPermissionSetOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListManagedPoliciesInPermissionSetInput, ListManagedPoliciesInPermissionSetOutputResponse>(input: input, inputKey: \ListManagedPoliciesInPermissionSetInput.nextToken, outputKey: \ListManagedPoliciesInPermissionSetOutputResponse.nextToken, paginationFunction: self.listManagedPoliciesInPermissionSet(input:))
    }
}

extension ListManagedPoliciesInPermissionSetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListManagedPoliciesInPermissionSetInput {
        return ListManagedPoliciesInPermissionSetInput(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listManagedPoliciesInPermissionSetPaginated`
/// to access the nested member `[SsoAdminClientTypes.AttachedManagedPolicy]`
/// - Returns: `[SsoAdminClientTypes.AttachedManagedPolicy]`
extension PaginatorSequence where Input == ListManagedPoliciesInPermissionSetInput, Output == ListManagedPoliciesInPermissionSetOutputResponse {
    func attachedManagedPolicies() async throws -> [SsoAdminClientTypes.AttachedManagedPolicy] {
        return try await self.asyncCompactMap { item in item.attachedManagedPolicies }
    }
}

/// Paginate over `[ListPermissionSetProvisioningStatusOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPermissionSetProvisioningStatusInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPermissionSetProvisioningStatusOutputResponse`
extension SsoAdminClient {
    public func listPermissionSetProvisioningStatusPaginated(input: ListPermissionSetProvisioningStatusInput) -> ClientRuntime.PaginatorSequence<ListPermissionSetProvisioningStatusInput, ListPermissionSetProvisioningStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPermissionSetProvisioningStatusInput, ListPermissionSetProvisioningStatusOutputResponse>(input: input, inputKey: \ListPermissionSetProvisioningStatusInput.nextToken, outputKey: \ListPermissionSetProvisioningStatusOutputResponse.nextToken, paginationFunction: self.listPermissionSetProvisioningStatus(input:))
    }
}

extension ListPermissionSetProvisioningStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionSetProvisioningStatusInput {
        return ListPermissionSetProvisioningStatusInput(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPermissionSetProvisioningStatusPaginated`
/// to access the nested member `[SsoAdminClientTypes.PermissionSetProvisioningStatusMetadata]`
/// - Returns: `[SsoAdminClientTypes.PermissionSetProvisioningStatusMetadata]`
extension PaginatorSequence where Input == ListPermissionSetProvisioningStatusInput, Output == ListPermissionSetProvisioningStatusOutputResponse {
    func permissionSetsProvisioningStatus() async throws -> [SsoAdminClientTypes.PermissionSetProvisioningStatusMetadata] {
        return try await self.asyncCompactMap { item in item.permissionSetsProvisioningStatus }
    }
}

/// Paginate over `[ListPermissionSetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPermissionSetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPermissionSetsOutputResponse`
extension SsoAdminClient {
    public func listPermissionSetsPaginated(input: ListPermissionSetsInput) -> ClientRuntime.PaginatorSequence<ListPermissionSetsInput, ListPermissionSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPermissionSetsInput, ListPermissionSetsOutputResponse>(input: input, inputKey: \ListPermissionSetsInput.nextToken, outputKey: \ListPermissionSetsOutputResponse.nextToken, paginationFunction: self.listPermissionSets(input:))
    }
}

extension ListPermissionSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionSetsInput {
        return ListPermissionSetsInput(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPermissionSetsPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListPermissionSetsInput, Output == ListPermissionSetsOutputResponse {
    func permissionSets() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.permissionSets }
    }
}

/// Paginate over `[ListPermissionSetsProvisionedToAccountOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPermissionSetsProvisionedToAccountInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPermissionSetsProvisionedToAccountOutputResponse`
extension SsoAdminClient {
    public func listPermissionSetsProvisionedToAccountPaginated(input: ListPermissionSetsProvisionedToAccountInput) -> ClientRuntime.PaginatorSequence<ListPermissionSetsProvisionedToAccountInput, ListPermissionSetsProvisionedToAccountOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPermissionSetsProvisionedToAccountInput, ListPermissionSetsProvisionedToAccountOutputResponse>(input: input, inputKey: \ListPermissionSetsProvisionedToAccountInput.nextToken, outputKey: \ListPermissionSetsProvisionedToAccountOutputResponse.nextToken, paginationFunction: self.listPermissionSetsProvisionedToAccount(input:))
    }
}

extension ListPermissionSetsProvisionedToAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionSetsProvisionedToAccountInput {
        return ListPermissionSetsProvisionedToAccountInput(
            accountId: self.accountId,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            provisioningStatus: self.provisioningStatus
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPermissionSetsProvisionedToAccountPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListPermissionSetsProvisionedToAccountInput, Output == ListPermissionSetsProvisionedToAccountOutputResponse {
    func permissionSets() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.permissionSets }
    }
}

/// Paginate over `[ListTagsForResourceOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsForResourceInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
extension SsoAdminClient {
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            instanceArn: self.instanceArn,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
/// to access the nested member `[SsoAdminClientTypes.Tag]`
/// - Returns: `[SsoAdminClientTypes.Tag]`
extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutputResponse {
    func tags() async throws -> [SsoAdminClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}