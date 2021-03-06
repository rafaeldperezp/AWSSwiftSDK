// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListStreamConsumersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStreamConsumersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStreamConsumersOutputResponse`
extension KinesisClient {
    public func listStreamConsumersPaginated(input: ListStreamConsumersInput) -> ClientRuntime.PaginatorSequence<ListStreamConsumersInput, ListStreamConsumersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStreamConsumersInput, ListStreamConsumersOutputResponse>(input: input, inputKey: \ListStreamConsumersInput.nextToken, outputKey: \ListStreamConsumersOutputResponse.nextToken, paginationFunction: self.listStreamConsumers(input:))
    }
}

extension ListStreamConsumersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStreamConsumersInput {
        return ListStreamConsumersInput(
            maxResults: self.maxResults,
            nextToken: token,
            streamARN: self.streamARN,
            streamCreationTimestamp: self.streamCreationTimestamp
        )}
}
