// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListMemberAccountsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListMemberAccountsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListMemberAccountsOutputResponse`
extension MacieClient {
    public func listMemberAccountsPaginated(input: ListMemberAccountsInput) -> ClientRuntime.PaginatorSequence<ListMemberAccountsInput, ListMemberAccountsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMemberAccountsInput, ListMemberAccountsOutputResponse>(input: input, inputKey: \ListMemberAccountsInput.nextToken, outputKey: \ListMemberAccountsOutputResponse.nextToken, paginationFunction: self.listMemberAccounts(input:))
    }
}

extension ListMemberAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMemberAccountsInput {
        return ListMemberAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListS3ResourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListS3ResourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListS3ResourcesOutputResponse`
extension MacieClient {
    public func listS3ResourcesPaginated(input: ListS3ResourcesInput) -> ClientRuntime.PaginatorSequence<ListS3ResourcesInput, ListS3ResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListS3ResourcesInput, ListS3ResourcesOutputResponse>(input: input, inputKey: \ListS3ResourcesInput.nextToken, outputKey: \ListS3ResourcesOutputResponse.nextToken, paginationFunction: self.listS3Resources(input:))
    }
}

extension ListS3ResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListS3ResourcesInput {
        return ListS3ResourcesInput(
            maxResults: self.maxResults,
            memberAccountId: self.memberAccountId,
            nextToken: token
        )}
}
