// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MarketplaceCommerceAnalyticsClient {
    public static let clientName = "MarketplaceCommerceAnalyticsClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "Marketplace Commerce Analytics"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: AWSClientRuntime.AWSClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try MarketplaceCommerceAnalyticsClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await MarketplaceCommerceAnalyticsClientConfiguration()
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class MarketplaceCommerceAnalyticsClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpointResolver: AWSClientRuntime.EndpointResolver
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?

        public init(
            region: Swift.String,
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) throws {
            self.region = region
            self.signingRegion = signingRegion ?? region
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.frameworkMetadata = frameworkMetadata
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            region: Swift.String,
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("MarketplaceCommerceAnalyticsClient")
            try self.init(region: region, credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) async throws {
            let resolvedRegionResolver = regionResolver ?? DefaultRegionResolver()
            self.region = await resolvedRegionResolver.resolveRegion()
            self.regionResolver = resolvedRegionResolver
            self.signingRegion = signingRegion ?? region
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.frameworkMetadata = frameworkMetadata
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) async throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("MarketplaceCommerceAnalyticsClient")
            try await self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct MarketplaceCommerceAnalyticsClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MarketplaceCommerceAnalyticsClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension MarketplaceCommerceAnalyticsClient: MarketplaceCommerceAnalyticsClientProtocol {
    /// Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    public func generateDataSet(input: GenerateDataSetInput) async throws -> GenerateDataSetOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "generateDataSet")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "marketplacecommerceanalytics")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GenerateDataSetInput, GenerateDataSetOutputResponse, GenerateDataSetOutputError>(id: "generateDataSet")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse, GenerateDataSetOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse>(xAmzTarget: "MarketplaceCommerceAnalytics20150701.GenerateDataSet"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    public func startSupportDataExport(input: StartSupportDataExportInput) async throws -> StartSupportDataExportOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startSupportDataExport")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "marketplacecommerceanalytics")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<StartSupportDataExportInput, StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(id: "startSupportDataExport")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse>(xAmzTarget: "MarketplaceCommerceAnalytics20150701.StartSupportDataExport"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}
