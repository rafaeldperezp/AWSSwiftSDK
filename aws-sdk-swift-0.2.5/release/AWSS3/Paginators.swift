// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListObjectsV2OutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListObjectsV2Input]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListObjectsV2OutputResponse`
extension S3Client {
    public func listObjectsV2Paginated(input: ListObjectsV2Input) -> ClientRuntime.PaginatorSequence<ListObjectsV2Input, ListObjectsV2OutputResponse> {
        return ClientRuntime.PaginatorSequence<ListObjectsV2Input, ListObjectsV2OutputResponse>(input: input, inputKey: \ListObjectsV2Input.continuationToken, outputKey: \ListObjectsV2OutputResponse.nextContinuationToken, paginationFunction: self.listObjectsV2(input:))
    }
}

extension ListObjectsV2Input: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListObjectsV2Input {
        return ListObjectsV2Input(
            bucket: self.bucket,
            continuationToken: token,
            delimiter: self.delimiter,
            encodingType: self.encodingType,
            expectedBucketOwner: self.expectedBucketOwner,
            fetchOwner: self.fetchOwner,
            maxKeys: self.maxKeys,
            prefix: self.prefix,
            requestPayer: self.requestPayer,
            startAfter: self.startAfter
        )}
}

/// Paginate over `[ListPartsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPartsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPartsOutputResponse`
extension S3Client {
    public func listPartsPaginated(input: ListPartsInput) -> ClientRuntime.PaginatorSequence<ListPartsInput, ListPartsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPartsInput, ListPartsOutputResponse>(input: input, inputKey: \ListPartsInput.partNumberMarker, outputKey: \ListPartsOutputResponse.nextPartNumberMarker, paginationFunction: self.listParts(input:))
    }
}

extension ListPartsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPartsInput {
        return ListPartsInput(
            bucket: self.bucket,
            expectedBucketOwner: self.expectedBucketOwner,
            key: self.key,
            maxParts: self.maxParts,
            partNumberMarker: token,
            requestPayer: self.requestPayer,
            uploadId: self.uploadId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPartsPaginated`
/// to access the nested member `[S3ClientTypes.Part]`
/// - Returns: `[S3ClientTypes.Part]`
extension PaginatorSequence where Input == ListPartsInput, Output == ListPartsOutputResponse {
    func parts() async throws -> [S3ClientTypes.Part] {
        return try await self.asyncCompactMap { item in item.parts }
    }
}
