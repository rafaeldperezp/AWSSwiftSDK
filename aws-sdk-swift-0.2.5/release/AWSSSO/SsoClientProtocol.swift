// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Single Sign-On Portal is a web service that makes it easy for you to assign user access to AWS SSO resources such as the user portal. Users can get AWS account applications and roles assigned to them and get federated into the application. For general information about AWS SSO, see [What is AWS Single Sign-On?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html) in the AWS SSO User Guide. This API reference guide describes the AWS SSO Portal operations that you can call programatically and includes detailed information on data types and errors. AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a convenient way to create programmatic access to AWS SSO and other AWS services. For more information about the AWS SDKs, including how to download and install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
public protocol SsoClientProtocol {
    /// Returns the STS short-term credentials for a given role name that is assigned to the user.
    func getRoleCredentials(input: GetRoleCredentialsInput) async throws -> GetRoleCredentialsOutputResponse
    /// Lists all roles that are assigned to the user for a given AWS account.
    func listAccountRoles(input: ListAccountRolesInput) async throws -> ListAccountRolesOutputResponse
    /// Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see [Assign User Access](https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers) in the AWS SSO User Guide. This operation returns a paginated response.
    func listAccounts(input: ListAccountsInput) async throws -> ListAccountsOutputResponse
    /// Removes the client- and server-side session that is associated with the user.
    func logout(input: LogoutInput) async throws -> LogoutOutputResponse
}

public enum SsoClientTypes {}
