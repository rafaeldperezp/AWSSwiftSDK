// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// SageMaker Edge Manager dataplane service for communicating with active agents.
public protocol SagemakerEdgeClientProtocol {
    /// Use to check if a device is registered with SageMaker Edge Manager.
    func getDeviceRegistration(input: GetDeviceRegistrationInput) async throws -> GetDeviceRegistrationOutputResponse
    /// Use to get the current status of devices registered on SageMaker Edge Manager.
    func sendHeartbeat(input: SendHeartbeatInput) async throws -> SendHeartbeatOutputResponse
}

public enum SagemakerEdgeClientTypes {}
