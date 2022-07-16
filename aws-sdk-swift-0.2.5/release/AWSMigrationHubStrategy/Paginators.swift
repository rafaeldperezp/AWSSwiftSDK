// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[GetServerDetailsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetServerDetailsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetServerDetailsOutputResponse`
extension MigrationHubStrategyClient {
    public func getServerDetailsPaginated(input: GetServerDetailsInput) -> ClientRuntime.PaginatorSequence<GetServerDetailsInput, GetServerDetailsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetServerDetailsInput, GetServerDetailsOutputResponse>(input: input, inputKey: \GetServerDetailsInput.nextToken, outputKey: \GetServerDetailsOutputResponse.nextToken, paginationFunction: self.getServerDetails(input:))
    }
}

extension GetServerDetailsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetServerDetailsInput {
        return GetServerDetailsInput(
            maxResults: self.maxResults,
            nextToken: token,
            serverId: self.serverId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getServerDetailsPaginated`
/// to access the nested member `[MigrationHubStrategyClientTypes.AssociatedApplication]`
/// - Returns: `[MigrationHubStrategyClientTypes.AssociatedApplication]`
extension PaginatorSequence where Input == GetServerDetailsInput, Output == GetServerDetailsOutputResponse {
    func associatedApplications() async throws -> [MigrationHubStrategyClientTypes.AssociatedApplication] {
        return try await self.asyncCompactMap { item in item.associatedApplications }
    }
}

/// Paginate over `[ListApplicationComponentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListApplicationComponentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListApplicationComponentsOutputResponse`
extension MigrationHubStrategyClient {
    public func listApplicationComponentsPaginated(input: ListApplicationComponentsInput) -> ClientRuntime.PaginatorSequence<ListApplicationComponentsInput, ListApplicationComponentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListApplicationComponentsInput, ListApplicationComponentsOutputResponse>(input: input, inputKey: \ListApplicationComponentsInput.nextToken, outputKey: \ListApplicationComponentsOutputResponse.nextToken, paginationFunction: self.listApplicationComponents(input:))
    }
}

extension ListApplicationComponentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationComponentsInput {
        return ListApplicationComponentsInput(
            applicationComponentCriteria: self.applicationComponentCriteria,
            filterValue: self.filterValue,
            groupIdFilter: self.groupIdFilter,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listApplicationComponentsPaginated`
/// to access the nested member `[MigrationHubStrategyClientTypes.ApplicationComponentDetail]`
/// - Returns: `[MigrationHubStrategyClientTypes.ApplicationComponentDetail]`
extension PaginatorSequence where Input == ListApplicationComponentsInput, Output == ListApplicationComponentsOutputResponse {
    func applicationComponentInfos() async throws -> [MigrationHubStrategyClientTypes.ApplicationComponentDetail] {
        return try await self.asyncCompactMap { item in item.applicationComponentInfos }
    }
}

/// Paginate over `[ListCollectorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCollectorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCollectorsOutputResponse`
extension MigrationHubStrategyClient {
    public func listCollectorsPaginated(input: ListCollectorsInput) -> ClientRuntime.PaginatorSequence<ListCollectorsInput, ListCollectorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCollectorsInput, ListCollectorsOutputResponse>(input: input, inputKey: \ListCollectorsInput.nextToken, outputKey: \ListCollectorsOutputResponse.nextToken, paginationFunction: self.listCollectors(input:))
    }
}

extension ListCollectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCollectorsInput {
        return ListCollectorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listCollectorsPaginated`
/// to access the nested member `[MigrationHubStrategyClientTypes.Collector]`
/// - Returns: `[MigrationHubStrategyClientTypes.Collector]`
extension PaginatorSequence where Input == ListCollectorsInput, Output == ListCollectorsOutputResponse {
    func collectors() async throws -> [MigrationHubStrategyClientTypes.Collector] {
        return try await self.asyncCompactMap { item in item.collectors }
    }
}

/// Paginate over `[ListImportFileTaskOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListImportFileTaskInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListImportFileTaskOutputResponse`
extension MigrationHubStrategyClient {
    public func listImportFileTaskPaginated(input: ListImportFileTaskInput) -> ClientRuntime.PaginatorSequence<ListImportFileTaskInput, ListImportFileTaskOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListImportFileTaskInput, ListImportFileTaskOutputResponse>(input: input, inputKey: \ListImportFileTaskInput.nextToken, outputKey: \ListImportFileTaskOutputResponse.nextToken, paginationFunction: self.listImportFileTask(input:))
    }
}

extension ListImportFileTaskInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImportFileTaskInput {
        return ListImportFileTaskInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listImportFileTaskPaginated`
/// to access the nested member `[MigrationHubStrategyClientTypes.ImportFileTaskInformation]`
/// - Returns: `[MigrationHubStrategyClientTypes.ImportFileTaskInformation]`
extension PaginatorSequence where Input == ListImportFileTaskInput, Output == ListImportFileTaskOutputResponse {
    func taskInfos() async throws -> [MigrationHubStrategyClientTypes.ImportFileTaskInformation] {
        return try await self.asyncCompactMap { item in item.taskInfos }
    }
}

/// Paginate over `[ListServersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListServersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListServersOutputResponse`
extension MigrationHubStrategyClient {
    public func listServersPaginated(input: ListServersInput) -> ClientRuntime.PaginatorSequence<ListServersInput, ListServersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListServersInput, ListServersOutputResponse>(input: input, inputKey: \ListServersInput.nextToken, outputKey: \ListServersOutputResponse.nextToken, paginationFunction: self.listServers(input:))
    }
}

extension ListServersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListServersInput {
        return ListServersInput(
            filterValue: self.filterValue,
            groupIdFilter: self.groupIdFilter,
            maxResults: self.maxResults,
            nextToken: token,
            serverCriteria: self.serverCriteria,
            sort: self.sort
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listServersPaginated`
/// to access the nested member `[MigrationHubStrategyClientTypes.ServerDetail]`
/// - Returns: `[MigrationHubStrategyClientTypes.ServerDetail]`
extension PaginatorSequence where Input == ListServersInput, Output == ListServersOutputResponse {
    func serverInfos() async throws -> [MigrationHubStrategyClientTypes.ServerDetail] {
        return try await self.asyncCompactMap { item in item.serverInfos }
    }
}
