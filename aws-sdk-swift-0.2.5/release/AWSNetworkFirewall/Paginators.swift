// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListFirewallPoliciesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFirewallPoliciesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFirewallPoliciesOutputResponse`
extension NetworkFirewallClient {
    public func listFirewallPoliciesPaginated(input: ListFirewallPoliciesInput) -> ClientRuntime.PaginatorSequence<ListFirewallPoliciesInput, ListFirewallPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFirewallPoliciesInput, ListFirewallPoliciesOutputResponse>(input: input, inputKey: \ListFirewallPoliciesInput.nextToken, outputKey: \ListFirewallPoliciesOutputResponse.nextToken, paginationFunction: self.listFirewallPolicies(input:))
    }
}

extension ListFirewallPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFirewallPoliciesInput {
        return ListFirewallPoliciesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListFirewallsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFirewallsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFirewallsOutputResponse`
extension NetworkFirewallClient {
    public func listFirewallsPaginated(input: ListFirewallsInput) -> ClientRuntime.PaginatorSequence<ListFirewallsInput, ListFirewallsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFirewallsInput, ListFirewallsOutputResponse>(input: input, inputKey: \ListFirewallsInput.nextToken, outputKey: \ListFirewallsOutputResponse.nextToken, paginationFunction: self.listFirewalls(input:))
    }
}

extension ListFirewallsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFirewallsInput {
        return ListFirewallsInput(
            maxResults: self.maxResults,
            nextToken: token,
            vpcIds: self.vpcIds
        )}
}

/// Paginate over `[ListRuleGroupsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRuleGroupsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRuleGroupsOutputResponse`
extension NetworkFirewallClient {
    public func listRuleGroupsPaginated(input: ListRuleGroupsInput) -> ClientRuntime.PaginatorSequence<ListRuleGroupsInput, ListRuleGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRuleGroupsInput, ListRuleGroupsOutputResponse>(input: input, inputKey: \ListRuleGroupsInput.nextToken, outputKey: \ListRuleGroupsOutputResponse.nextToken, paginationFunction: self.listRuleGroups(input:))
    }
}

extension ListRuleGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRuleGroupsInput {
        return ListRuleGroupsInput(
            maxResults: self.maxResults,
            nextToken: token,
            scope: self.scope
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
extension NetworkFirewallClient {
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}
