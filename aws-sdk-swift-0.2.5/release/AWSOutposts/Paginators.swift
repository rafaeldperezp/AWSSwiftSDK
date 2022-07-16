// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListCatalogItemsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCatalogItemsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCatalogItemsOutputResponse`
extension OutpostsClient {
    public func listCatalogItemsPaginated(input: ListCatalogItemsInput) -> ClientRuntime.PaginatorSequence<ListCatalogItemsInput, ListCatalogItemsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCatalogItemsInput, ListCatalogItemsOutputResponse>(input: input, inputKey: \ListCatalogItemsInput.nextToken, outputKey: \ListCatalogItemsOutputResponse.nextToken, paginationFunction: self.listCatalogItems(input:))
    }
}

extension ListCatalogItemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCatalogItemsInput {
        return ListCatalogItemsInput(
            eC2FamilyFilter: self.eC2FamilyFilter,
            itemClassFilter: self.itemClassFilter,
            maxResults: self.maxResults,
            nextToken: token,
            supportedStorageFilter: self.supportedStorageFilter
        )}
}

/// Paginate over `[ListOrdersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListOrdersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListOrdersOutputResponse`
extension OutpostsClient {
    public func listOrdersPaginated(input: ListOrdersInput) -> ClientRuntime.PaginatorSequence<ListOrdersInput, ListOrdersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOrdersInput, ListOrdersOutputResponse>(input: input, inputKey: \ListOrdersInput.nextToken, outputKey: \ListOrdersOutputResponse.nextToken, paginationFunction: self.listOrders(input:))
    }
}

extension ListOrdersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrdersInput {
        return ListOrdersInput(
            maxResults: self.maxResults,
            nextToken: token,
            outpostIdentifierFilter: self.outpostIdentifierFilter
        )}
}

/// Paginate over `[ListOutpostsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListOutpostsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListOutpostsOutputResponse`
extension OutpostsClient {
    public func listOutpostsPaginated(input: ListOutpostsInput) -> ClientRuntime.PaginatorSequence<ListOutpostsInput, ListOutpostsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOutpostsInput, ListOutpostsOutputResponse>(input: input, inputKey: \ListOutpostsInput.nextToken, outputKey: \ListOutpostsOutputResponse.nextToken, paginationFunction: self.listOutposts(input:))
    }
}

extension ListOutpostsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOutpostsInput {
        return ListOutpostsInput(
            availabilityZoneFilter: self.availabilityZoneFilter,
            availabilityZoneIdFilter: self.availabilityZoneIdFilter,
            lifeCycleStatusFilter: self.lifeCycleStatusFilter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListSitesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSitesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSitesOutputResponse`
extension OutpostsClient {
    public func listSitesPaginated(input: ListSitesInput) -> ClientRuntime.PaginatorSequence<ListSitesInput, ListSitesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSitesInput, ListSitesOutputResponse>(input: input, inputKey: \ListSitesInput.nextToken, outputKey: \ListSitesOutputResponse.nextToken, paginationFunction: self.listSites(input:))
    }
}

extension ListSitesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSitesInput {
        return ListSitesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
