// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.
public protocol AppSyncClientProtocol {
    /// Maps an endpoint to your custom domain.
    func associateApi(input: AssociateApiInput) async throws -> AssociateApiOutputResponse
    /// Creates a cache for the GraphQL API.
    func createApiCache(input: CreateApiCacheInput) async throws -> CreateApiCacheOutputResponse
    /// Creates a unique key that you can distribute to clients who invoke your API.
    func createApiKey(input: CreateApiKeyInput) async throws -> CreateApiKeyOutputResponse
    /// Creates a DataSource object.
    func createDataSource(input: CreateDataSourceInput) async throws -> CreateDataSourceOutputResponse
    /// Creates a custom DomainName object.
    func createDomainName(input: CreateDomainNameInput) async throws -> CreateDomainNameOutputResponse
    /// Creates a Function object. A function is a reusable entity. You can use multiple functions to compose the resolver logic.
    func createFunction(input: CreateFunctionInput) async throws -> CreateFunctionOutputResponse
    /// Creates a GraphqlApi object.
    func createGraphqlApi(input: CreateGraphqlApiInput) async throws -> CreateGraphqlApiOutputResponse
    /// Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand, and converts the data source's responses into GraphQL.
    func createResolver(input: CreateResolverInput) async throws -> CreateResolverOutputResponse
    /// Creates a Type object.
    func createType(input: CreateTypeInput) async throws -> CreateTypeOutputResponse
    /// Deletes an ApiCache object.
    func deleteApiCache(input: DeleteApiCacheInput) async throws -> DeleteApiCacheOutputResponse
    /// Deletes an API key.
    func deleteApiKey(input: DeleteApiKeyInput) async throws -> DeleteApiKeyOutputResponse
    /// Deletes a DataSource object.
    func deleteDataSource(input: DeleteDataSourceInput) async throws -> DeleteDataSourceOutputResponse
    /// Deletes a custom DomainName object.
    func deleteDomainName(input: DeleteDomainNameInput) async throws -> DeleteDomainNameOutputResponse
    /// Deletes a Function.
    func deleteFunction(input: DeleteFunctionInput) async throws -> DeleteFunctionOutputResponse
    /// Deletes a GraphqlApi object.
    func deleteGraphqlApi(input: DeleteGraphqlApiInput) async throws -> DeleteGraphqlApiOutputResponse
    /// Deletes a Resolver object.
    func deleteResolver(input: DeleteResolverInput) async throws -> DeleteResolverOutputResponse
    /// Deletes a Type object.
    func deleteType(input: DeleteTypeInput) async throws -> DeleteTypeOutputResponse
    /// Removes an ApiAssociation object from a custom domain.
    func disassociateApi(input: DisassociateApiInput) async throws -> DisassociateApiOutputResponse
    /// Flushes an ApiCache object.
    func flushApiCache(input: FlushApiCacheInput) async throws -> FlushApiCacheOutputResponse
    /// Retrieves an ApiAssociation object.
    func getApiAssociation(input: GetApiAssociationInput) async throws -> GetApiAssociationOutputResponse
    /// Retrieves an ApiCache object.
    func getApiCache(input: GetApiCacheInput) async throws -> GetApiCacheOutputResponse
    /// Retrieves a DataSource object.
    func getDataSource(input: GetDataSourceInput) async throws -> GetDataSourceOutputResponse
    /// Retrieves a custom DomainName object.
    func getDomainName(input: GetDomainNameInput) async throws -> GetDomainNameOutputResponse
    /// Get a Function.
    func getFunction(input: GetFunctionInput) async throws -> GetFunctionOutputResponse
    /// Retrieves a GraphqlApi object.
    func getGraphqlApi(input: GetGraphqlApiInput) async throws -> GetGraphqlApiOutputResponse
    /// Retrieves the introspection schema for a GraphQL API.
    func getIntrospectionSchema(input: GetIntrospectionSchemaInput) async throws -> GetIntrospectionSchemaOutputResponse
    /// Retrieves a Resolver object.
    func getResolver(input: GetResolverInput) async throws -> GetResolverOutputResponse
    /// Retrieves the current status of a schema creation operation.
    func getSchemaCreationStatus(input: GetSchemaCreationStatusInput) async throws -> GetSchemaCreationStatusOutputResponse
    /// Retrieves a Type object.
    func getType(input: GetTypeInput) async throws -> GetTypeOutputResponse
    /// Lists the API keys for a given API. API keys are deleted automatically 60 days after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted.
    func listApiKeys(input: ListApiKeysInput) async throws -> ListApiKeysOutputResponse
    /// Lists the data sources for a given API.
    func listDataSources(input: ListDataSourcesInput) async throws -> ListDataSourcesOutputResponse
    /// Lists multiple custom domain names.
    func listDomainNames(input: ListDomainNamesInput) async throws -> ListDomainNamesOutputResponse
    /// List multiple functions.
    func listFunctions(input: ListFunctionsInput) async throws -> ListFunctionsOutputResponse
    /// Lists your GraphQL APIs.
    func listGraphqlApis(input: ListGraphqlApisInput) async throws -> ListGraphqlApisOutputResponse
    /// Lists the resolvers for a given API and type.
    func listResolvers(input: ListResolversInput) async throws -> ListResolversOutputResponse
    /// List the resolvers that are associated with a specific function.
    func listResolversByFunction(input: ListResolversByFunctionInput) async throws -> ListResolversByFunctionOutputResponse
    /// Lists the tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Lists the types for a given API.
    func listTypes(input: ListTypesInput) async throws -> ListTypesOutputResponse
    /// Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.
    func startSchemaCreation(input: StartSchemaCreationInput) async throws -> StartSchemaCreationOutputResponse
    /// Tags a resource with user-supplied tags.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Untags a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the cache for the GraphQL API.
    func updateApiCache(input: UpdateApiCacheInput) async throws -> UpdateApiCacheOutputResponse
    /// Updates an API key. You can update the key as long as it's not deleted.
    func updateApiKey(input: UpdateApiKeyInput) async throws -> UpdateApiKeyOutputResponse
    /// Updates a DataSource object.
    func updateDataSource(input: UpdateDataSourceInput) async throws -> UpdateDataSourceOutputResponse
    /// Updates a custom DomainName object.
    func updateDomainName(input: UpdateDomainNameInput) async throws -> UpdateDomainNameOutputResponse
    /// Updates a Function object.
    func updateFunction(input: UpdateFunctionInput) async throws -> UpdateFunctionOutputResponse
    /// Updates a GraphqlApi object.
    func updateGraphqlApi(input: UpdateGraphqlApiInput) async throws -> UpdateGraphqlApiOutputResponse
    /// Updates a Resolver object.
    func updateResolver(input: UpdateResolverInput) async throws -> UpdateResolverOutputResponse
    /// Updates a Type object.
    func updateType(input: UpdateTypeInput) async throws -> UpdateTypeOutputResponse
}

public enum AppSyncClientTypes {}