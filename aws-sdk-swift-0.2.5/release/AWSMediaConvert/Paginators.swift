// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeEndpointsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeEndpointsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeEndpointsOutputResponse`
extension MediaConvertClient {
    public func describeEndpointsPaginated(input: DescribeEndpointsInput) -> ClientRuntime.PaginatorSequence<DescribeEndpointsInput, DescribeEndpointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeEndpointsInput, DescribeEndpointsOutputResponse>(input: input, inputKey: \DescribeEndpointsInput.nextToken, outputKey: \DescribeEndpointsOutputResponse.nextToken, paginationFunction: self.describeEndpoints(input:))
    }
}

extension DescribeEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEndpointsInput {
        return DescribeEndpointsInput(
            maxResults: self.maxResults,
            mode: self.mode,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeEndpointsPaginated`
/// to access the nested member `[MediaConvertClientTypes.Endpoint]`
/// - Returns: `[MediaConvertClientTypes.Endpoint]`
extension PaginatorSequence where Input == DescribeEndpointsInput, Output == DescribeEndpointsOutputResponse {
    func endpoints() async throws -> [MediaConvertClientTypes.Endpoint] {
        return try await self.asyncCompactMap { item in item.endpoints }
    }
}

/// Paginate over `[ListJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListJobsOutputResponse`
extension MediaConvertClient {
    public func listJobsPaginated(input: ListJobsInput) -> ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse>(input: input, inputKey: \ListJobsInput.nextToken, outputKey: \ListJobsOutputResponse.nextToken, paginationFunction: self.listJobs(input:))
    }
}

extension ListJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsInput {
        return ListJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order,
            queue: self.queue,
            status: self.status
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listJobsPaginated`
/// to access the nested member `[MediaConvertClientTypes.Job]`
/// - Returns: `[MediaConvertClientTypes.Job]`
extension PaginatorSequence where Input == ListJobsInput, Output == ListJobsOutputResponse {
    func jobs() async throws -> [MediaConvertClientTypes.Job] {
        return try await self.asyncCompactMap { item in item.jobs }
    }
}

/// Paginate over `[ListJobTemplatesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListJobTemplatesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListJobTemplatesOutputResponse`
extension MediaConvertClient {
    public func listJobTemplatesPaginated(input: ListJobTemplatesInput) -> ClientRuntime.PaginatorSequence<ListJobTemplatesInput, ListJobTemplatesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobTemplatesInput, ListJobTemplatesOutputResponse>(input: input, inputKey: \ListJobTemplatesInput.nextToken, outputKey: \ListJobTemplatesOutputResponse.nextToken, paginationFunction: self.listJobTemplates(input:))
    }
}

extension ListJobTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobTemplatesInput {
        return ListJobTemplatesInput(
            category: self.category,
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listJobTemplatesPaginated`
/// to access the nested member `[MediaConvertClientTypes.JobTemplate]`
/// - Returns: `[MediaConvertClientTypes.JobTemplate]`
extension PaginatorSequence where Input == ListJobTemplatesInput, Output == ListJobTemplatesOutputResponse {
    func jobTemplates() async throws -> [MediaConvertClientTypes.JobTemplate] {
        return try await self.asyncCompactMap { item in item.jobTemplates }
    }
}

/// Paginate over `[ListPresetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPresetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPresetsOutputResponse`
extension MediaConvertClient {
    public func listPresetsPaginated(input: ListPresetsInput) -> ClientRuntime.PaginatorSequence<ListPresetsInput, ListPresetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPresetsInput, ListPresetsOutputResponse>(input: input, inputKey: \ListPresetsInput.nextToken, outputKey: \ListPresetsOutputResponse.nextToken, paginationFunction: self.listPresets(input:))
    }
}

extension ListPresetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPresetsInput {
        return ListPresetsInput(
            category: self.category,
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPresetsPaginated`
/// to access the nested member `[MediaConvertClientTypes.Preset]`
/// - Returns: `[MediaConvertClientTypes.Preset]`
extension PaginatorSequence where Input == ListPresetsInput, Output == ListPresetsOutputResponse {
    func presets() async throws -> [MediaConvertClientTypes.Preset] {
        return try await self.asyncCompactMap { item in item.presets }
    }
}

/// Paginate over `[ListQueuesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListQueuesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListQueuesOutputResponse`
extension MediaConvertClient {
    public func listQueuesPaginated(input: ListQueuesInput) -> ClientRuntime.PaginatorSequence<ListQueuesInput, ListQueuesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListQueuesInput, ListQueuesOutputResponse>(input: input, inputKey: \ListQueuesInput.nextToken, outputKey: \ListQueuesOutputResponse.nextToken, paginationFunction: self.listQueues(input:))
    }
}

extension ListQueuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListQueuesInput {
        return ListQueuesInput(
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listQueuesPaginated`
/// to access the nested member `[MediaConvertClientTypes.Queue]`
/// - Returns: `[MediaConvertClientTypes.Queue]`
extension PaginatorSequence where Input == ListQueuesInput, Output == ListQueuesOutputResponse {
    func queues() async throws -> [MediaConvertClientTypes.Queue] {
        return try await self.asyncCompactMap { item in item.queues }
    }
}
