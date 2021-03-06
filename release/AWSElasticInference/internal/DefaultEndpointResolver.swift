// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

struct DefaultEndpointResolver : AWSClientRuntime.EndpointResolver {
    func resolve(serviceId: String, region: String) throws -> AWSClientRuntime.AWSEndpoint {
        return try AWSClientRuntime.AWSEndpoint.resolveEndpoint(partitions: servicePartitions, region: region)
    }
}

private let servicePartitions = [
    AWSClientRuntime.Partition(
        id: "aws",
        regionRegex: "^(us|eu|ap|sa|ca|me|af)\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "api.elastic-inference.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "ap-northeast-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "api.elastic-inference.ap-northeast-1.amazonaws.com"
            ),
            "ap-northeast-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "api.elastic-inference.ap-northeast-2.amazonaws.com"
            ),
            "eu-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "api.elastic-inference.eu-west-1.amazonaws.com"
            ),
            "us-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "api.elastic-inference.us-east-1.amazonaws.com"
            ),
            "us-east-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "api.elastic-inference.us-east-2.amazonaws.com"
            ),
            "us-west-2": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "api.elastic-inference.us-west-2.amazonaws.com"
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "api.elastic-inference.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "api.elastic-inference.{region}.c2s.ic.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso-b",
        regionRegex: "^us\\-isob\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "api.elastic-inference.{region}.sc2s.sgov.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-us-gov",
        regionRegex: "^us\\-gov\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "api.elastic-inference.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
]
