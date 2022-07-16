// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListBootstrapActionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListBootstrapActionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListBootstrapActionsOutputResponse`
extension EmrClient {
    public func listBootstrapActionsPaginated(input: ListBootstrapActionsInput) -> ClientRuntime.PaginatorSequence<ListBootstrapActionsInput, ListBootstrapActionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBootstrapActionsInput, ListBootstrapActionsOutputResponse>(input: input, inputKey: \ListBootstrapActionsInput.marker, outputKey: \ListBootstrapActionsOutputResponse.marker, paginationFunction: self.listBootstrapActions(input:))
    }
}

extension ListBootstrapActionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBootstrapActionsInput {
        return ListBootstrapActionsInput(
            clusterId: self.clusterId,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listBootstrapActionsPaginated`
/// to access the nested member `[EmrClientTypes.Command]`
/// - Returns: `[EmrClientTypes.Command]`
extension PaginatorSequence where Input == ListBootstrapActionsInput, Output == ListBootstrapActionsOutputResponse {
    func bootstrapActions() async throws -> [EmrClientTypes.Command] {
        return try await self.asyncCompactMap { item in item.bootstrapActions }
    }
}

/// Paginate over `[ListClustersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListClustersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListClustersOutputResponse`
extension EmrClient {
    public func listClustersPaginated(input: ListClustersInput) -> ClientRuntime.PaginatorSequence<ListClustersInput, ListClustersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListClustersInput, ListClustersOutputResponse>(input: input, inputKey: \ListClustersInput.marker, outputKey: \ListClustersOutputResponse.marker, paginationFunction: self.listClusters(input:))
    }
}

extension ListClustersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListClustersInput {
        return ListClustersInput(
            clusterStates: self.clusterStates,
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listClustersPaginated`
/// to access the nested member `[EmrClientTypes.ClusterSummary]`
/// - Returns: `[EmrClientTypes.ClusterSummary]`
extension PaginatorSequence where Input == ListClustersInput, Output == ListClustersOutputResponse {
    func clusters() async throws -> [EmrClientTypes.ClusterSummary] {
        return try await self.asyncCompactMap { item in item.clusters }
    }
}

/// Paginate over `[ListInstanceFleetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListInstanceFleetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListInstanceFleetsOutputResponse`
extension EmrClient {
    public func listInstanceFleetsPaginated(input: ListInstanceFleetsInput) -> ClientRuntime.PaginatorSequence<ListInstanceFleetsInput, ListInstanceFleetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInstanceFleetsInput, ListInstanceFleetsOutputResponse>(input: input, inputKey: \ListInstanceFleetsInput.marker, outputKey: \ListInstanceFleetsOutputResponse.marker, paginationFunction: self.listInstanceFleets(input:))
    }
}

extension ListInstanceFleetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstanceFleetsInput {
        return ListInstanceFleetsInput(
            clusterId: self.clusterId,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listInstanceFleetsPaginated`
/// to access the nested member `[EmrClientTypes.InstanceFleet]`
/// - Returns: `[EmrClientTypes.InstanceFleet]`
extension PaginatorSequence where Input == ListInstanceFleetsInput, Output == ListInstanceFleetsOutputResponse {
    func instanceFleets() async throws -> [EmrClientTypes.InstanceFleet] {
        return try await self.asyncCompactMap { item in item.instanceFleets }
    }
}

/// Paginate over `[ListInstanceGroupsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListInstanceGroupsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListInstanceGroupsOutputResponse`
extension EmrClient {
    public func listInstanceGroupsPaginated(input: ListInstanceGroupsInput) -> ClientRuntime.PaginatorSequence<ListInstanceGroupsInput, ListInstanceGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInstanceGroupsInput, ListInstanceGroupsOutputResponse>(input: input, inputKey: \ListInstanceGroupsInput.marker, outputKey: \ListInstanceGroupsOutputResponse.marker, paginationFunction: self.listInstanceGroups(input:))
    }
}

extension ListInstanceGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstanceGroupsInput {
        return ListInstanceGroupsInput(
            clusterId: self.clusterId,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listInstanceGroupsPaginated`
/// to access the nested member `[EmrClientTypes.InstanceGroup]`
/// - Returns: `[EmrClientTypes.InstanceGroup]`
extension PaginatorSequence where Input == ListInstanceGroupsInput, Output == ListInstanceGroupsOutputResponse {
    func instanceGroups() async throws -> [EmrClientTypes.InstanceGroup] {
        return try await self.asyncCompactMap { item in item.instanceGroups }
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
extension EmrClient {
    public func listInstancesPaginated(input: ListInstancesInput) -> ClientRuntime.PaginatorSequence<ListInstancesInput, ListInstancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInstancesInput, ListInstancesOutputResponse>(input: input, inputKey: \ListInstancesInput.marker, outputKey: \ListInstancesOutputResponse.marker, paginationFunction: self.listInstances(input:))
    }
}

extension ListInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstancesInput {
        return ListInstancesInput(
            clusterId: self.clusterId,
            instanceFleetId: self.instanceFleetId,
            instanceFleetType: self.instanceFleetType,
            instanceGroupId: self.instanceGroupId,
            instanceGroupTypes: self.instanceGroupTypes,
            instanceStates: self.instanceStates,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listInstancesPaginated`
/// to access the nested member `[EmrClientTypes.Instance]`
/// - Returns: `[EmrClientTypes.Instance]`
extension PaginatorSequence where Input == ListInstancesInput, Output == ListInstancesOutputResponse {
    func instances() async throws -> [EmrClientTypes.Instance] {
        return try await self.asyncCompactMap { item in item.instances }
    }
}

/// Paginate over `[ListNotebookExecutionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListNotebookExecutionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListNotebookExecutionsOutputResponse`
extension EmrClient {
    public func listNotebookExecutionsPaginated(input: ListNotebookExecutionsInput) -> ClientRuntime.PaginatorSequence<ListNotebookExecutionsInput, ListNotebookExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListNotebookExecutionsInput, ListNotebookExecutionsOutputResponse>(input: input, inputKey: \ListNotebookExecutionsInput.marker, outputKey: \ListNotebookExecutionsOutputResponse.marker, paginationFunction: self.listNotebookExecutions(input:))
    }
}

extension ListNotebookExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNotebookExecutionsInput {
        return ListNotebookExecutionsInput(
            editorId: self.editorId,
            from: self.from,
            marker: token,
            status: self.status,
            to: self.to
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listNotebookExecutionsPaginated`
/// to access the nested member `[EmrClientTypes.NotebookExecutionSummary]`
/// - Returns: `[EmrClientTypes.NotebookExecutionSummary]`
extension PaginatorSequence where Input == ListNotebookExecutionsInput, Output == ListNotebookExecutionsOutputResponse {
    func notebookExecutions() async throws -> [EmrClientTypes.NotebookExecutionSummary] {
        return try await self.asyncCompactMap { item in item.notebookExecutions }
    }
}

/// Paginate over `[ListReleaseLabelsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListReleaseLabelsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListReleaseLabelsOutputResponse`
extension EmrClient {
    public func listReleaseLabelsPaginated(input: ListReleaseLabelsInput) -> ClientRuntime.PaginatorSequence<ListReleaseLabelsInput, ListReleaseLabelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListReleaseLabelsInput, ListReleaseLabelsOutputResponse>(input: input, inputKey: \ListReleaseLabelsInput.nextToken, outputKey: \ListReleaseLabelsOutputResponse.nextToken, paginationFunction: self.listReleaseLabels(input:))
    }
}

extension ListReleaseLabelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReleaseLabelsInput {
        return ListReleaseLabelsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListSecurityConfigurationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSecurityConfigurationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSecurityConfigurationsOutputResponse`
extension EmrClient {
    public func listSecurityConfigurationsPaginated(input: ListSecurityConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListSecurityConfigurationsInput, ListSecurityConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSecurityConfigurationsInput, ListSecurityConfigurationsOutputResponse>(input: input, inputKey: \ListSecurityConfigurationsInput.marker, outputKey: \ListSecurityConfigurationsOutputResponse.marker, paginationFunction: self.listSecurityConfigurations(input:))
    }
}

extension ListSecurityConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSecurityConfigurationsInput {
        return ListSecurityConfigurationsInput(
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listSecurityConfigurationsPaginated`
/// to access the nested member `[EmrClientTypes.SecurityConfigurationSummary]`
/// - Returns: `[EmrClientTypes.SecurityConfigurationSummary]`
extension PaginatorSequence where Input == ListSecurityConfigurationsInput, Output == ListSecurityConfigurationsOutputResponse {
    func securityConfigurations() async throws -> [EmrClientTypes.SecurityConfigurationSummary] {
        return try await self.asyncCompactMap { item in item.securityConfigurations }
    }
}

/// Paginate over `[ListStepsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStepsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStepsOutputResponse`
extension EmrClient {
    public func listStepsPaginated(input: ListStepsInput) -> ClientRuntime.PaginatorSequence<ListStepsInput, ListStepsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStepsInput, ListStepsOutputResponse>(input: input, inputKey: \ListStepsInput.marker, outputKey: \ListStepsOutputResponse.marker, paginationFunction: self.listSteps(input:))
    }
}

extension ListStepsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStepsInput {
        return ListStepsInput(
            clusterId: self.clusterId,
            marker: token,
            stepIds: self.stepIds,
            stepStates: self.stepStates
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStepsPaginated`
/// to access the nested member `[EmrClientTypes.StepSummary]`
/// - Returns: `[EmrClientTypes.StepSummary]`
extension PaginatorSequence where Input == ListStepsInput, Output == ListStepsOutputResponse {
    func steps() async throws -> [EmrClientTypes.StepSummary] {
        return try await self.asyncCompactMap { item in item.steps }
    }
}

/// Paginate over `[ListStudiosOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStudiosInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStudiosOutputResponse`
extension EmrClient {
    public func listStudiosPaginated(input: ListStudiosInput) -> ClientRuntime.PaginatorSequence<ListStudiosInput, ListStudiosOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStudiosInput, ListStudiosOutputResponse>(input: input, inputKey: \ListStudiosInput.marker, outputKey: \ListStudiosOutputResponse.marker, paginationFunction: self.listStudios(input:))
    }
}

extension ListStudiosInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStudiosInput {
        return ListStudiosInput(
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStudiosPaginated`
/// to access the nested member `[EmrClientTypes.StudioSummary]`
/// - Returns: `[EmrClientTypes.StudioSummary]`
extension PaginatorSequence where Input == ListStudiosInput, Output == ListStudiosOutputResponse {
    func studios() async throws -> [EmrClientTypes.StudioSummary] {
        return try await self.asyncCompactMap { item in item.studios }
    }
}

/// Paginate over `[ListStudioSessionMappingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStudioSessionMappingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStudioSessionMappingsOutputResponse`
extension EmrClient {
    public func listStudioSessionMappingsPaginated(input: ListStudioSessionMappingsInput) -> ClientRuntime.PaginatorSequence<ListStudioSessionMappingsInput, ListStudioSessionMappingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStudioSessionMappingsInput, ListStudioSessionMappingsOutputResponse>(input: input, inputKey: \ListStudioSessionMappingsInput.marker, outputKey: \ListStudioSessionMappingsOutputResponse.marker, paginationFunction: self.listStudioSessionMappings(input:))
    }
}

extension ListStudioSessionMappingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStudioSessionMappingsInput {
        return ListStudioSessionMappingsInput(
            identityType: self.identityType,
            marker: token,
            studioId: self.studioId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStudioSessionMappingsPaginated`
/// to access the nested member `[EmrClientTypes.SessionMappingSummary]`
/// - Returns: `[EmrClientTypes.SessionMappingSummary]`
extension PaginatorSequence where Input == ListStudioSessionMappingsInput, Output == ListStudioSessionMappingsOutputResponse {
    func sessionMappings() async throws -> [EmrClientTypes.SessionMappingSummary] {
        return try await self.asyncCompactMap { item in item.sessionMappings }
    }
}
