// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListBrokersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListBrokersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListBrokersOutputResponse`
extension MqClient {
    public func listBrokersPaginated(input: ListBrokersInput) -> ClientRuntime.PaginatorSequence<ListBrokersInput, ListBrokersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBrokersInput, ListBrokersOutputResponse>(input: input, inputKey: \ListBrokersInput.nextToken, outputKey: \ListBrokersOutputResponse.nextToken, paginationFunction: self.listBrokers(input:))
    }
}

extension ListBrokersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBrokersInput {
        return ListBrokersInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listBrokersPaginated`
/// to access the nested member `[MqClientTypes.BrokerSummary]`
/// - Returns: `[MqClientTypes.BrokerSummary]`
extension PaginatorSequence where Input == ListBrokersInput, Output == ListBrokersOutputResponse {
    func brokerSummaries() async throws -> [MqClientTypes.BrokerSummary] {
        return try await self.asyncCompactMap { item in item.brokerSummaries }
    }
}