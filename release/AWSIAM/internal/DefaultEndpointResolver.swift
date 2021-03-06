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
        partitionEndpoint: "aws-global",
        isRegionalized: false,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "iam.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "aws-global": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "iam.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-east-1")
            ),
            "iam-fips": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "iam-fips.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-east-1")
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "aws-cn-global",
        isRegionalized: false,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "iam.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "aws-cn-global": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "iam.cn-north-1.amazonaws.com.cn",
                credentialScope: AWSClientRuntime.CredentialScope(region: "cn-north-1")
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "aws-iso-global",
        isRegionalized: false,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "iam.{region}.c2s.ic.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "aws-iso-global": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "iam.us-iso-east-1.c2s.ic.gov",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-iso-east-1")
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso-b",
        regionRegex: "^us\\-isob\\-\\w+\\-\\d+$",
        partitionEndpoint: "aws-iso-b-global",
        isRegionalized: false,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "iam.{region}.sc2s.sgov.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "aws-iso-b-global": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "iam.us-isob-east-1.sc2s.sgov.gov",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-isob-east-1")
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-us-gov",
        regionRegex: "^us\\-gov\\-\\w+\\-\\d+$",
        partitionEndpoint: "aws-us-gov-global",
        isRegionalized: false,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "iam.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "aws-us-gov-global": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "iam.us-gov.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-gov-west-1")
            ),
            "iam-govcloud-fips": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "iam.us-gov.amazonaws.com",
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-gov-west-1")
            ),
        ]
    ),
]
