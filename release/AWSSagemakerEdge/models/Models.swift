// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension SagemakerEdgeClientTypes.EdgeMetric: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case dimension = "Dimension"
        case metricName = "MetricName"
        case timestamp = "Timestamp"
        case value = "Value"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dimension = dimension {
            try encodeContainer.encode(dimension, forKey: .dimension)
        }
        if let metricName = metricName {
            try encodeContainer.encode(metricName, forKey: .metricName)
        }
        if let timestamp = timestamp {
            try encodeContainer.encode(timestamp.timeIntervalSince1970, forKey: .timestamp)
        }
        if value != 0.0 {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dimensionDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .dimension)
        dimension = dimensionDecoded
        let metricNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .metricName)
        metricName = metricNameDecoded
        let valueDecoded = try containerValues.decode(Swift.Double.self, forKey: .value)
        value = valueDecoded
        let timestampDecoded = try containerValues.decodeIfPresent(ClientRuntime.Date.self, forKey: .timestamp)
        timestamp = timestampDecoded
    }
}

extension SagemakerEdgeClientTypes {
    /// Information required for edge device metrics.
    public struct EdgeMetric: Swift.Equatable {
        /// The dimension of metrics published.
        public var dimension: Swift.String?
        /// Returns the name of the metric.
        public var metricName: Swift.String?
        /// Timestamp of when the metric was requested.
        public var timestamp: ClientRuntime.Date?
        /// Returns the value of the metric.
        public var value: Swift.Double

        public init (
            dimension: Swift.String? = nil,
            metricName: Swift.String? = nil,
            timestamp: ClientRuntime.Date? = nil,
            value: Swift.Double = 0.0
        )
        {
            self.dimension = dimension
            self.metricName = metricName
            self.timestamp = timestamp
            self.value = value
        }
    }

}

extension GetDeviceRegistrationInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case deviceFleetName = "DeviceFleetName"
        case deviceName = "DeviceName"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let deviceFleetName = deviceFleetName {
            try encodeContainer.encode(deviceFleetName, forKey: .deviceFleetName)
        }
        if let deviceName = deviceName {
            try encodeContainer.encode(deviceName, forKey: .deviceName)
        }
    }
}

extension GetDeviceRegistrationInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/GetDeviceRegistration"
    }
}

public struct GetDeviceRegistrationInput: Swift.Equatable {
    /// The name of the fleet that the device belongs to.
    /// This member is required.
    public var deviceFleetName: Swift.String?
    /// The unique name of the device you want to get the registration status from.
    /// This member is required.
    public var deviceName: Swift.String?

    public init (
        deviceFleetName: Swift.String? = nil,
        deviceName: Swift.String? = nil
    )
    {
        self.deviceFleetName = deviceFleetName
        self.deviceName = deviceName
    }
}

struct GetDeviceRegistrationInputBody: Swift.Equatable {
    let deviceName: Swift.String?
    let deviceFleetName: Swift.String?
}

extension GetDeviceRegistrationInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case deviceFleetName = "DeviceFleetName"
        case deviceName = "DeviceName"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .deviceName)
        deviceName = deviceNameDecoded
        let deviceFleetNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .deviceFleetName)
        deviceFleetName = deviceFleetNameDecoded
    }
}

extension GetDeviceRegistrationOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension GetDeviceRegistrationOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "InternalServiceException" : self = .internalServiceException(try InternalServiceException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum GetDeviceRegistrationOutputError: Swift.Error, Swift.Equatable {
    case internalServiceException(InternalServiceException)
    case unknown(UnknownAWSHttpServiceError)
}

extension GetDeviceRegistrationOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: GetDeviceRegistrationOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.cacheTTL = output.cacheTTL
            self.deviceRegistration = output.deviceRegistration
        } else {
            self.cacheTTL = nil
            self.deviceRegistration = nil
        }
    }
}

public struct GetDeviceRegistrationOutputResponse: Swift.Equatable {
    /// The amount of time, in seconds, that the registration status is stored on the device’s cache before it is refreshed.
    public var cacheTTL: Swift.String?
    /// Describes if the device is currently registered with SageMaker Edge Manager.
    public var deviceRegistration: Swift.String?

    public init (
        cacheTTL: Swift.String? = nil,
        deviceRegistration: Swift.String? = nil
    )
    {
        self.cacheTTL = cacheTTL
        self.deviceRegistration = deviceRegistration
    }
}

struct GetDeviceRegistrationOutputResponseBody: Swift.Equatable {
    let deviceRegistration: Swift.String?
    let cacheTTL: Swift.String?
}

extension GetDeviceRegistrationOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case cacheTTL = "CacheTTL"
        case deviceRegistration = "DeviceRegistration"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceRegistrationDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .deviceRegistration)
        deviceRegistration = deviceRegistrationDecoded
        let cacheTTLDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .cacheTTL)
        cacheTTL = cacheTTLDecoded
    }
}

extension InternalServiceException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: InternalServiceExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// An internal failure occurred. Try your request again. If the problem persists, contact AWS customer support.
public struct InternalServiceException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct InternalServiceExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InternalServiceExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension SagemakerEdgeClientTypes.Model: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case latestInference = "LatestInference"
        case latestSampleTime = "LatestSampleTime"
        case modelMetrics = "ModelMetrics"
        case modelName = "ModelName"
        case modelVersion = "ModelVersion"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let latestInference = latestInference {
            try encodeContainer.encode(latestInference.timeIntervalSince1970, forKey: .latestInference)
        }
        if let latestSampleTime = latestSampleTime {
            try encodeContainer.encode(latestSampleTime.timeIntervalSince1970, forKey: .latestSampleTime)
        }
        if let modelMetrics = modelMetrics {
            var modelMetricsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .modelMetrics)
            for edgemetrics0 in modelMetrics {
                try modelMetricsContainer.encode(edgemetrics0)
            }
        }
        if let modelName = modelName {
            try encodeContainer.encode(modelName, forKey: .modelName)
        }
        if let modelVersion = modelVersion {
            try encodeContainer.encode(modelVersion, forKey: .modelVersion)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let modelNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .modelName)
        modelName = modelNameDecoded
        let modelVersionDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .modelVersion)
        modelVersion = modelVersionDecoded
        let latestSampleTimeDecoded = try containerValues.decodeIfPresent(ClientRuntime.Date.self, forKey: .latestSampleTime)
        latestSampleTime = latestSampleTimeDecoded
        let latestInferenceDecoded = try containerValues.decodeIfPresent(ClientRuntime.Date.self, forKey: .latestInference)
        latestInference = latestInferenceDecoded
        let modelMetricsContainer = try containerValues.decodeIfPresent([SagemakerEdgeClientTypes.EdgeMetric?].self, forKey: .modelMetrics)
        var modelMetricsDecoded0:[SagemakerEdgeClientTypes.EdgeMetric]? = nil
        if let modelMetricsContainer = modelMetricsContainer {
            modelMetricsDecoded0 = [SagemakerEdgeClientTypes.EdgeMetric]()
            for structure0 in modelMetricsContainer {
                if let structure0 = structure0 {
                    modelMetricsDecoded0?.append(structure0)
                }
            }
        }
        modelMetrics = modelMetricsDecoded0
    }
}

extension SagemakerEdgeClientTypes {
    /// Information about a model deployed on an edge device that is registered with SageMaker Edge Manager.
    public struct Model: Swift.Equatable {
        /// The timestamp of the last inference that was made.
        public var latestInference: ClientRuntime.Date?
        /// The timestamp of the last data sample taken.
        public var latestSampleTime: ClientRuntime.Date?
        /// Information required for model metrics.
        public var modelMetrics: [SagemakerEdgeClientTypes.EdgeMetric]?
        /// The name of the model.
        public var modelName: Swift.String?
        /// The version of the model.
        public var modelVersion: Swift.String?

        public init (
            latestInference: ClientRuntime.Date? = nil,
            latestSampleTime: ClientRuntime.Date? = nil,
            modelMetrics: [SagemakerEdgeClientTypes.EdgeMetric]? = nil,
            modelName: Swift.String? = nil,
            modelVersion: Swift.String? = nil
        )
        {
            self.latestInference = latestInference
            self.latestSampleTime = latestSampleTime
            self.modelMetrics = modelMetrics
            self.modelName = modelName
            self.modelVersion = modelVersion
        }
    }

}

extension SendHeartbeatInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case agentMetrics = "AgentMetrics"
        case agentVersion = "AgentVersion"
        case deviceFleetName = "DeviceFleetName"
        case deviceName = "DeviceName"
        case models = "Models"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let agentMetrics = agentMetrics {
            var agentMetricsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .agentMetrics)
            for edgemetrics0 in agentMetrics {
                try agentMetricsContainer.encode(edgemetrics0)
            }
        }
        if let agentVersion = agentVersion {
            try encodeContainer.encode(agentVersion, forKey: .agentVersion)
        }
        if let deviceFleetName = deviceFleetName {
            try encodeContainer.encode(deviceFleetName, forKey: .deviceFleetName)
        }
        if let deviceName = deviceName {
            try encodeContainer.encode(deviceName, forKey: .deviceName)
        }
        if let models = models {
            var modelsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .models)
            for models0 in models {
                try modelsContainer.encode(models0)
            }
        }
    }
}

extension SendHeartbeatInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/SendHeartbeat"
    }
}

public struct SendHeartbeatInput: Swift.Equatable {
    /// For internal use. Returns a list of SageMaker Edge Manager agent operating metrics.
    public var agentMetrics: [SagemakerEdgeClientTypes.EdgeMetric]?
    /// Returns the version of the agent.
    /// This member is required.
    public var agentVersion: Swift.String?
    /// The name of the fleet that the device belongs to.
    /// This member is required.
    public var deviceFleetName: Swift.String?
    /// The unique name of the device.
    /// This member is required.
    public var deviceName: Swift.String?
    /// Returns a list of models deployed on the the device.
    public var models: [SagemakerEdgeClientTypes.Model]?

    public init (
        agentMetrics: [SagemakerEdgeClientTypes.EdgeMetric]? = nil,
        agentVersion: Swift.String? = nil,
        deviceFleetName: Swift.String? = nil,
        deviceName: Swift.String? = nil,
        models: [SagemakerEdgeClientTypes.Model]? = nil
    )
    {
        self.agentMetrics = agentMetrics
        self.agentVersion = agentVersion
        self.deviceFleetName = deviceFleetName
        self.deviceName = deviceName
        self.models = models
    }
}

struct SendHeartbeatInputBody: Swift.Equatable {
    let agentMetrics: [SagemakerEdgeClientTypes.EdgeMetric]?
    let models: [SagemakerEdgeClientTypes.Model]?
    let agentVersion: Swift.String?
    let deviceName: Swift.String?
    let deviceFleetName: Swift.String?
}

extension SendHeartbeatInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case agentMetrics = "AgentMetrics"
        case agentVersion = "AgentVersion"
        case deviceFleetName = "DeviceFleetName"
        case deviceName = "DeviceName"
        case models = "Models"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let agentMetricsContainer = try containerValues.decodeIfPresent([SagemakerEdgeClientTypes.EdgeMetric?].self, forKey: .agentMetrics)
        var agentMetricsDecoded0:[SagemakerEdgeClientTypes.EdgeMetric]? = nil
        if let agentMetricsContainer = agentMetricsContainer {
            agentMetricsDecoded0 = [SagemakerEdgeClientTypes.EdgeMetric]()
            for structure0 in agentMetricsContainer {
                if let structure0 = structure0 {
                    agentMetricsDecoded0?.append(structure0)
                }
            }
        }
        agentMetrics = agentMetricsDecoded0
        let modelsContainer = try containerValues.decodeIfPresent([SagemakerEdgeClientTypes.Model?].self, forKey: .models)
        var modelsDecoded0:[SagemakerEdgeClientTypes.Model]? = nil
        if let modelsContainer = modelsContainer {
            modelsDecoded0 = [SagemakerEdgeClientTypes.Model]()
            for structure0 in modelsContainer {
                if let structure0 = structure0 {
                    modelsDecoded0?.append(structure0)
                }
            }
        }
        models = modelsDecoded0
        let agentVersionDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .agentVersion)
        agentVersion = agentVersionDecoded
        let deviceNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .deviceName)
        deviceName = deviceNameDecoded
        let deviceFleetNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .deviceFleetName)
        deviceFleetName = deviceFleetNameDecoded
    }
}

extension SendHeartbeatOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension SendHeartbeatOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "InternalServiceException" : self = .internalServiceException(try InternalServiceException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum SendHeartbeatOutputError: Swift.Error, Swift.Equatable {
    case internalServiceException(InternalServiceException)
    case unknown(UnknownAWSHttpServiceError)
}

extension SendHeartbeatOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
    }
}

public struct SendHeartbeatOutputResponse: Swift.Equatable {

}