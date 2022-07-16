// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon AppStream 2.0 This is the Amazon AppStream 2.0 API Reference. This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand. You can call the AppStream 2.0 API operations by using an interface VPC endpoint (interface endpoint). For more information, see [Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint](https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html) in the Amazon AppStream 2.0 Administration Guide. To learn more about AppStream 2.0, see the following resources:
///
/// * [Amazon AppStream 2.0 product page](http://aws.amazon.com/appstream2)
///
/// * [Amazon AppStream 2.0 documentation](http://aws.amazon.com/documentation/appstream2)
public protocol AppStreamClientProtocol {
    /// Associates the specified application with the specified fleet. This is only supported for Elastic fleets.
    func associateApplicationFleet(input: AssociateApplicationFleetInput) async throws -> AssociateApplicationFleetOutputResponse
    /// Associates the specified fleet with the specified stack.
    func associateFleet(input: AssociateFleetInput) async throws -> AssociateFleetOutputResponse
    /// Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.
    func batchAssociateUserStack(input: BatchAssociateUserStackInput) async throws -> BatchAssociateUserStackOutputResponse
    /// Disassociates the specified users from the specified stacks.
    func batchDisassociateUserStack(input: BatchDisassociateUserStackInput) async throws -> BatchDisassociateUserStackOutputResponse
    /// Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.
    func copyImage(input: CopyImageInput) async throws -> CopyImageOutputResponse
    /// Creates an app block. App blocks are an Amazon AppStream 2.0 resource that stores the details about the virtual hard disk in an S3 bucket. It also stores the setup script with details about how to mount the virtual hard disk. The virtual hard disk includes the application binaries and other files necessary to launch your applications. Multiple applications can be assigned to a single app block. This is only supported for Elastic fleets.
    func createAppBlock(input: CreateAppBlockInput) async throws -> CreateAppBlockOutputResponse
    /// Creates an application. Applications are an Amazon AppStream 2.0 resource that stores the details about how to launch applications on Elastic fleet streaming instances. An application consists of the launch details, icon, and display name. Applications are associated with an app block that contains the application binaries and other files. The applications assigned to an Elastic fleet are the applications users can launch. This is only supported for Elastic fleets.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    func createDirectoryConfig(input: CreateDirectoryConfigInput) async throws -> CreateDirectoryConfigOutputResponse
    /// Creates a fleet. A fleet consists of streaming instances that run a specified image when using Always-On or On-Demand.
    func createFleet(input: CreateFleetInput) async throws -> CreateFleetOutputResponse
    /// Creates an image builder. An image builder is a virtual machine that is used to create an image. The initial state of the builder is PENDING. When it is ready, the state is RUNNING.
    func createImageBuilder(input: CreateImageBuilderInput) async throws -> CreateImageBuilderOutputResponse
    /// Creates a URL to start an image builder streaming session.
    func createImageBuilderStreamingURL(input: CreateImageBuilderStreamingURLInput) async throws -> CreateImageBuilderStreamingURLOutputResponse
    /// Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations.
    func createStack(input: CreateStackInput) async throws -> CreateStackOutputResponse
    /// Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup.
    func createStreamingURL(input: CreateStreamingURLInput) async throws -> CreateStreamingURLOutputResponse
    /// Creates a new image with the latest Windows operating system updates, driver updates, and AppStream 2.0 agent software. For more information, see the "Update an Image by Using Managed AppStream 2.0 Image Updates" section in [Administer Your AppStream 2.0 Images](https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-images.html), in the Amazon AppStream 2.0 Administration Guide.
    func createUpdatedImage(input: CreateUpdatedImageInput) async throws -> CreateUpdatedImageOutputResponse
    /// Creates a usage report subscription. Usage reports are generated daily.
    func createUsageReportSubscription(input: CreateUsageReportSubscriptionInput) async throws -> CreateUsageReportSubscriptionOutputResponse
    /// Creates a new user in the user pool.
    func createUser(input: CreateUserInput) async throws -> CreateUserOutputResponse
    /// Deletes an app block.
    func deleteAppBlock(input: DeleteAppBlockInput) async throws -> DeleteAppBlockOutputResponse
    /// Deletes an application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    /// Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.
    func deleteDirectoryConfig(input: DeleteDirectoryConfigInput) async throws -> DeleteDirectoryConfigOutputResponse
    /// Deletes the specified fleet.
    func deleteFleet(input: DeleteFleetInput) async throws -> DeleteFleetOutputResponse
    /// Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.
    func deleteImage(input: DeleteImageInput) async throws -> DeleteImageOutputResponse
    /// Deletes the specified image builder and releases the capacity.
    func deleteImageBuilder(input: DeleteImageBuilderInput) async throws -> DeleteImageBuilderOutputResponse
    /// Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.
    func deleteImagePermissions(input: DeleteImagePermissionsInput) async throws -> DeleteImagePermissionsOutputResponse
    /// Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.
    func deleteStack(input: DeleteStackInput) async throws -> DeleteStackOutputResponse
    /// Disables usage report generation.
    func deleteUsageReportSubscription(input: DeleteUsageReportSubscriptionInput) async throws -> DeleteUsageReportSubscriptionOutputResponse
    /// Deletes a user from the user pool.
    func deleteUser(input: DeleteUserInput) async throws -> DeleteUserOutputResponse
    /// Retrieves a list that describes one or more app blocks.
    func describeAppBlocks(input: DescribeAppBlocksInput) async throws -> DescribeAppBlocksOutputResponse
    /// Retrieves a list that describes one or more application fleet associations. Either ApplicationArn or FleetName must be specified.
    func describeApplicationFleetAssociations(input: DescribeApplicationFleetAssociationsInput) async throws -> DescribeApplicationFleetAssociationsOutputResponse
    /// Retrieves a list that describes one or more applications.
    func describeApplications(input: DescribeApplicationsInput) async throws -> DescribeApplicationsOutputResponse
    /// Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains. Although the response syntax in this topic includes the account password, this password is not returned in the actual response.
    func describeDirectoryConfigs(input: DescribeDirectoryConfigsInput) async throws -> DescribeDirectoryConfigsOutputResponse
    /// Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.
    func describeFleets(input: DescribeFleetsInput) async throws -> DescribeFleetsOutputResponse
    /// Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.
    func describeImageBuilders(input: DescribeImageBuildersInput) async throws -> DescribeImageBuildersOutputResponse
    /// Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own.
    func describeImagePermissions(input: DescribeImagePermissionsInput) async throws -> DescribeImagePermissionsOutputResponse
    /// Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
    func describeImages(input: DescribeImagesInput) async throws -> DescribeImagesOutputResponse
    /// Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.
    func describeSessions(input: DescribeSessionsInput) async throws -> DescribeSessionsOutputResponse
    /// Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.
    func describeStacks(input: DescribeStacksInput) async throws -> DescribeStacksOutputResponse
    /// Retrieves a list that describes one or more usage report subscriptions.
    func describeUsageReportSubscriptions(input: DescribeUsageReportSubscriptionsInput) async throws -> DescribeUsageReportSubscriptionsOutputResponse
    /// Retrieves a list that describes one or more specified users in the user pool.
    func describeUsers(input: DescribeUsersInput) async throws -> DescribeUsersOutputResponse
    /// Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:
    ///
    /// * The stack name
    ///
    /// * The user name (email address of the user associated with the stack) and the authentication type for the user
    func describeUserStackAssociations(input: DescribeUserStackAssociationsInput) async throws -> DescribeUserStackAssociationsOutputResponse
    /// Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user.
    func disableUser(input: DisableUserInput) async throws -> DisableUserOutputResponse
    /// Disassociates the specified application from the fleet.
    func disassociateApplicationFleet(input: DisassociateApplicationFleetInput) async throws -> DisassociateApplicationFleetOutputResponse
    /// Disassociates the specified fleet from the specified stack.
    func disassociateFleet(input: DisassociateFleetInput) async throws -> DisassociateFleetOutputResponse
    /// Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.
    func enableUser(input: EnableUserInput) async throws -> EnableUserOutputResponse
    /// Immediately stops the specified streaming session.
    func expireSession(input: ExpireSessionInput) async throws -> ExpireSessionOutputResponse
    /// Retrieves the name of the fleet that is associated with the specified stack.
    func listAssociatedFleets(input: ListAssociatedFleetsInput) async throws -> ListAssociatedFleetsOutputResponse
    /// Retrieves the name of the stack with which the specified fleet is associated.
    func listAssociatedStacks(input: ListAssociatedStacksInput) async throws -> ListAssociatedStacksOutputResponse
    /// Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html) in the Amazon AppStream 2.0 Administration Guide.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Starts the specified fleet.
    func startFleet(input: StartFleetInput) async throws -> StartFleetOutputResponse
    /// Starts the specified image builder.
    func startImageBuilder(input: StartImageBuilderInput) async throws -> StartImageBuilderOutputResponse
    /// Stops the specified fleet.
    func stopFleet(input: StopFleetInput) async throws -> StopFleetOutputResponse
    /// Stops the specified image builder.
    func stopImageBuilder(input: StopImageBuilderInput) async throws -> StopImageBuilderOutputResponse
    /// Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value. To list the current tags for your resources, use [ListTagsForResource]. To disassociate tags from your resources, use [UntagResource]. For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html) in the Amazon AppStream 2.0 Administration Guide.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Disassociates one or more specified tags from the specified AppStream 2.0 resource. To list the current tags for your resources, use [ListTagsForResource]. For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html) in the Amazon AppStream 2.0 Administration Guide.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the specified application.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    /// Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    func updateDirectoryConfig(input: UpdateDirectoryConfigInput) async throws -> UpdateDirectoryConfigOutputResponse
    /// Updates the specified fleet. If the fleet is in the STOPPED state, you can update any attribute except the fleet name. If the fleet is in the RUNNING state, you can update the following based on the fleet type:
    ///
    /// * Always-On and On-Demand fleet types You can update the DisplayName, ComputeCapacity, ImageARN, ImageName, IdleDisconnectTimeoutInSeconds, and DisconnectTimeoutInSeconds attributes.
    ///
    /// * Elastic fleet type You can update the DisplayName, IdleDisconnectTimeoutInSeconds, DisconnectTimeoutInSeconds, MaxConcurrentSessions, and UsbDeviceFilterStrings attributes.
    ///
    ///
    /// If the fleet is in the STARTING or STOPPED state, you can't update it.
    func updateFleet(input: UpdateFleetInput) async throws -> UpdateFleetOutputResponse
    /// Adds or updates permissions for the specified private image.
    func updateImagePermissions(input: UpdateImagePermissionsInput) async throws -> UpdateImagePermissionsOutputResponse
    /// Updates the specified fields for the specified stack.
    func updateStack(input: UpdateStackInput) async throws -> UpdateStackOutputResponse
}

public enum AppStreamClientTypes {}
