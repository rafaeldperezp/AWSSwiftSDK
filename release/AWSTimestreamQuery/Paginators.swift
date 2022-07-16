// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListScheduledQueriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListScheduledQueriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListScheduledQueriesOutputResponse`
extension TimestreamQueryClient {
    public func listScheduledQueriesPaginated(input: ListScheduledQueriesInput) -> ClientRuntime.PaginatorSequence<ListScheduledQueriesInput, ListScheduledQueriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListScheduledQueriesInput, ListScheduledQueriesOutputResponse>(input: input, inputKey: \ListScheduledQueriesInput.nextToken, outputKey: \ListScheduledQueriesOutputResponse.nextToken, paginationFunction: self.listScheduledQueries(input:))
    }
}

extension ListScheduledQueriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListScheduledQueriesInput {
        return ListScheduledQueriesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTagsForResourceOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsForResourceInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
extension TimestreamQueryClient {
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceARN: self.resourceARN
        )}
}

/// Paginate over `[QueryOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[QueryInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `QueryOutputResponse`
extension TimestreamQueryClient {
    public func queryPaginated(input: QueryInput) -> ClientRuntime.PaginatorSequence<QueryInput, QueryOutputResponse> {
        return ClientRuntime.PaginatorSequence<QueryInput, QueryOutputResponse>(input: input, inputKey: \QueryInput.nextToken, outputKey: \QueryOutputResponse.nextToken, paginationFunction: self.query(input:))
    }
}

extension QueryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> QueryInput {
        return QueryInput(
            clientToken: self.clientToken,
            maxRows: self.maxRows,
            nextToken: token,
            queryString: self.queryString
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `queryPaginated`
/// to access the nested member `[TimestreamQueryClientTypes.Row]`
/// - Returns: `[TimestreamQueryClientTypes.Row]`
extension PaginatorSequence where Input == QueryInput, Output == QueryOutputResponse {
    func rows() async throws -> [TimestreamQueryClientTypes.Row] {
        return try await self.asyncCompactMap { item in item.rows }
    }
}