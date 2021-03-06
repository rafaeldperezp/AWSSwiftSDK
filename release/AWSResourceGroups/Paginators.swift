// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListGroupResourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListGroupResourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListGroupResourcesOutputResponse`
extension ResourceGroupsClient {
    public func listGroupResourcesPaginated(input: ListGroupResourcesInput) -> ClientRuntime.PaginatorSequence<ListGroupResourcesInput, ListGroupResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGroupResourcesInput, ListGroupResourcesOutputResponse>(input: input, inputKey: \ListGroupResourcesInput.nextToken, outputKey: \ListGroupResourcesOutputResponse.nextToken, paginationFunction: self.listGroupResources(input:))
    }
}

extension ListGroupResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupResourcesInput {
        return ListGroupResourcesInput(
            filters: self.filters,
            group: self.group,
            groupName: self.groupName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListGroupsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListGroupsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListGroupsOutputResponse`
extension ResourceGroupsClient {
    public func listGroupsPaginated(input: ListGroupsInput) -> ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutputResponse>(input: input, inputKey: \ListGroupsInput.nextToken, outputKey: \ListGroupsOutputResponse.nextToken, paginationFunction: self.listGroups(input:))
    }
}

extension ListGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupsInput {
        return ListGroupsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[SearchResourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchResourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchResourcesOutputResponse`
extension ResourceGroupsClient {
    public func searchResourcesPaginated(input: SearchResourcesInput) -> ClientRuntime.PaginatorSequence<SearchResourcesInput, SearchResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchResourcesInput, SearchResourcesOutputResponse>(input: input, inputKey: \SearchResourcesInput.nextToken, outputKey: \SearchResourcesOutputResponse.nextToken, paginationFunction: self.searchResources(input:))
    }
}

extension SearchResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchResourcesInput {
        return SearchResourcesInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceQuery: self.resourceQuery
        )}
}
