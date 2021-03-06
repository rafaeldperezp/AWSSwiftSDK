// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAccountRolesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountRolesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountRolesOutputResponse`
extension SsoClient {
    public func listAccountRolesPaginated(input: ListAccountRolesInput) -> ClientRuntime.PaginatorSequence<ListAccountRolesInput, ListAccountRolesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountRolesInput, ListAccountRolesOutputResponse>(input: input, inputKey: \ListAccountRolesInput.nextToken, outputKey: \ListAccountRolesOutputResponse.nextToken, paginationFunction: self.listAccountRoles(input:))
    }
}

extension ListAccountRolesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountRolesInput {
        return ListAccountRolesInput(
            accessToken: self.accessToken,
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAccountsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountsOutputResponse`
extension SsoClient {
    public func listAccountsPaginated(input: ListAccountsInput) -> ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutputResponse>(input: input, inputKey: \ListAccountsInput.nextToken, outputKey: \ListAccountsOutputResponse.nextToken, paginationFunction: self.listAccounts(input:))
    }
}

extension ListAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsInput {
        return ListAccountsInput(
            accessToken: self.accessToken,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
