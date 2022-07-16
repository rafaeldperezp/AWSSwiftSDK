// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[GetChannelScheduleOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetChannelScheduleInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetChannelScheduleOutputResponse`
extension MediaTailorClient {
    public func getChannelSchedulePaginated(input: GetChannelScheduleInput) -> ClientRuntime.PaginatorSequence<GetChannelScheduleInput, GetChannelScheduleOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetChannelScheduleInput, GetChannelScheduleOutputResponse>(input: input, inputKey: \GetChannelScheduleInput.nextToken, outputKey: \GetChannelScheduleOutputResponse.nextToken, paginationFunction: self.getChannelSchedule(input:))
    }
}

extension GetChannelScheduleInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetChannelScheduleInput {
        return GetChannelScheduleInput(
            channelName: self.channelName,
            durationMinutes: self.durationMinutes,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getChannelSchedulePaginated`
/// to access the nested member `[MediaTailorClientTypes.ScheduleEntry]`
/// - Returns: `[MediaTailorClientTypes.ScheduleEntry]`
extension PaginatorSequence where Input == GetChannelScheduleInput, Output == GetChannelScheduleOutputResponse {
    func items() async throws -> [MediaTailorClientTypes.ScheduleEntry] {
        return try await self.asyncCompactMap { item in item.items }
    }
}

/// Paginate over `[ListAlertsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAlertsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAlertsOutputResponse`
extension MediaTailorClient {
    public func listAlertsPaginated(input: ListAlertsInput) -> ClientRuntime.PaginatorSequence<ListAlertsInput, ListAlertsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAlertsInput, ListAlertsOutputResponse>(input: input, inputKey: \ListAlertsInput.nextToken, outputKey: \ListAlertsOutputResponse.nextToken, paginationFunction: self.listAlerts(input:))
    }
}

extension ListAlertsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAlertsInput {
        return ListAlertsInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAlertsPaginated`
/// to access the nested member `[MediaTailorClientTypes.Alert]`
/// - Returns: `[MediaTailorClientTypes.Alert]`
extension PaginatorSequence where Input == ListAlertsInput, Output == ListAlertsOutputResponse {
    func items() async throws -> [MediaTailorClientTypes.Alert] {
        return try await self.asyncCompactMap { item in item.items }
    }
}

/// Paginate over `[ListChannelsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChannelsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChannelsOutputResponse`
extension MediaTailorClient {
    public func listChannelsPaginated(input: ListChannelsInput) -> ClientRuntime.PaginatorSequence<ListChannelsInput, ListChannelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelsInput, ListChannelsOutputResponse>(input: input, inputKey: \ListChannelsInput.nextToken, outputKey: \ListChannelsOutputResponse.nextToken, paginationFunction: self.listChannels(input:))
    }
}

extension ListChannelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelsInput {
        return ListChannelsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listChannelsPaginated`
/// to access the nested member `[MediaTailorClientTypes.Channel]`
/// - Returns: `[MediaTailorClientTypes.Channel]`
extension PaginatorSequence where Input == ListChannelsInput, Output == ListChannelsOutputResponse {
    func items() async throws -> [MediaTailorClientTypes.Channel] {
        return try await self.asyncCompactMap { item in item.items }
    }
}

/// Paginate over `[ListPlaybackConfigurationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPlaybackConfigurationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPlaybackConfigurationsOutputResponse`
extension MediaTailorClient {
    public func listPlaybackConfigurationsPaginated(input: ListPlaybackConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListPlaybackConfigurationsInput, ListPlaybackConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPlaybackConfigurationsInput, ListPlaybackConfigurationsOutputResponse>(input: input, inputKey: \ListPlaybackConfigurationsInput.nextToken, outputKey: \ListPlaybackConfigurationsOutputResponse.nextToken, paginationFunction: self.listPlaybackConfigurations(input:))
    }
}

extension ListPlaybackConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPlaybackConfigurationsInput {
        return ListPlaybackConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPlaybackConfigurationsPaginated`
/// to access the nested member `[MediaTailorClientTypes.PlaybackConfiguration]`
/// - Returns: `[MediaTailorClientTypes.PlaybackConfiguration]`
extension PaginatorSequence where Input == ListPlaybackConfigurationsInput, Output == ListPlaybackConfigurationsOutputResponse {
    func items() async throws -> [MediaTailorClientTypes.PlaybackConfiguration] {
        return try await self.asyncCompactMap { item in item.items }
    }
}

/// Paginate over `[ListPrefetchSchedulesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPrefetchSchedulesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPrefetchSchedulesOutputResponse`
extension MediaTailorClient {
    public func listPrefetchSchedulesPaginated(input: ListPrefetchSchedulesInput) -> ClientRuntime.PaginatorSequence<ListPrefetchSchedulesInput, ListPrefetchSchedulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPrefetchSchedulesInput, ListPrefetchSchedulesOutputResponse>(input: input, inputKey: \ListPrefetchSchedulesInput.nextToken, outputKey: \ListPrefetchSchedulesOutputResponse.nextToken, paginationFunction: self.listPrefetchSchedules(input:))
    }
}

extension ListPrefetchSchedulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPrefetchSchedulesInput {
        return ListPrefetchSchedulesInput(
            maxResults: self.maxResults,
            nextToken: token,
            playbackConfigurationName: self.playbackConfigurationName,
            streamId: self.streamId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPrefetchSchedulesPaginated`
/// to access the nested member `[MediaTailorClientTypes.PrefetchSchedule]`
/// - Returns: `[MediaTailorClientTypes.PrefetchSchedule]`
extension PaginatorSequence where Input == ListPrefetchSchedulesInput, Output == ListPrefetchSchedulesOutputResponse {
    func items() async throws -> [MediaTailorClientTypes.PrefetchSchedule] {
        return try await self.asyncCompactMap { item in item.items }
    }
}

/// Paginate over `[ListSourceLocationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSourceLocationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSourceLocationsOutputResponse`
extension MediaTailorClient {
    public func listSourceLocationsPaginated(input: ListSourceLocationsInput) -> ClientRuntime.PaginatorSequence<ListSourceLocationsInput, ListSourceLocationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSourceLocationsInput, ListSourceLocationsOutputResponse>(input: input, inputKey: \ListSourceLocationsInput.nextToken, outputKey: \ListSourceLocationsOutputResponse.nextToken, paginationFunction: self.listSourceLocations(input:))
    }
}

extension ListSourceLocationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSourceLocationsInput {
        return ListSourceLocationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listSourceLocationsPaginated`
/// to access the nested member `[MediaTailorClientTypes.SourceLocation]`
/// - Returns: `[MediaTailorClientTypes.SourceLocation]`
extension PaginatorSequence where Input == ListSourceLocationsInput, Output == ListSourceLocationsOutputResponse {
    func items() async throws -> [MediaTailorClientTypes.SourceLocation] {
        return try await self.asyncCompactMap { item in item.items }
    }
}

/// Paginate over `[ListVodSourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListVodSourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListVodSourcesOutputResponse`
extension MediaTailorClient {
    public func listVodSourcesPaginated(input: ListVodSourcesInput) -> ClientRuntime.PaginatorSequence<ListVodSourcesInput, ListVodSourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListVodSourcesInput, ListVodSourcesOutputResponse>(input: input, inputKey: \ListVodSourcesInput.nextToken, outputKey: \ListVodSourcesOutputResponse.nextToken, paginationFunction: self.listVodSources(input:))
    }
}

extension ListVodSourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVodSourcesInput {
        return ListVodSourcesInput(
            maxResults: self.maxResults,
            nextToken: token,
            sourceLocationName: self.sourceLocationName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listVodSourcesPaginated`
/// to access the nested member `[MediaTailorClientTypes.VodSource]`
/// - Returns: `[MediaTailorClientTypes.VodSource]`
extension PaginatorSequence where Input == ListVodSourcesInput, Output == ListVodSourcesOutputResponse {
    func items() async throws -> [MediaTailorClientTypes.VodSource] {
        return try await self.asyncCompactMap { item in item.items }
    }
}