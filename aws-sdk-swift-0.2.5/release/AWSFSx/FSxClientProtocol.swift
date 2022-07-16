// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon FSx is a fully managed service that makes it easy for storage and application administrators to launch and use shared file storage.
public protocol FSxClientProtocol {
    /// Use this action to associate one or more Domain Name Server (DNS) aliases with an existing Amazon FSx for Windows File Server file system. A file system can have a maximum of 50 DNS aliases associated with it at any one time. If you try to associate a DNS alias that is already associated with the file system, FSx takes no action on that alias in the request. For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html) and [Walkthrough 5: Using DNS aliases to access your file system](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html), including additional steps you must take to be able to access your file system using a DNS alias. The system response shows the DNS aliases that Amazon FSx is attempting to associate with the file system. Use the API operation to monitor the status of the aliases Amazon FSx is associating with the file system.
    func associateFileSystemAliases(input: AssociateFileSystemAliasesInput) async throws -> AssociateFileSystemAliasesOutputResponse
    /// Cancels an existing Amazon FSx for Lustre data repository task if that task is in either the PENDING or EXECUTING state. When you cancel a task, Amazon FSx does the following.
    ///
    /// * Any files that FSx has already exported are not reverted.
    ///
    /// * FSx continues to export any files that are "in-flight" when the cancel operation is received.
    ///
    /// * FSx does not export any files that have not yet been exported.
    func cancelDataRepositoryTask(input: CancelDataRepositoryTaskInput) async throws -> CancelDataRepositoryTaskOutputResponse
    /// Copies an existing backup within the same Amazon Web Services account to another Amazon Web Services Region (cross-Region copy) or within the same Amazon Web Services Region (in-Region copy). You can have up to five backup copy requests in progress to a single destination Region per account. You can use cross-Region backup copies for cross-Region disaster recovery. You can periodically take backups and copy them to another Region so that in the event of a disaster in the primary Region, you can restore from backup and recover availability quickly in the other Region. You can make cross-Region copies only within your Amazon Web Services partition. A partition is a grouping of Regions. Amazon Web Services currently has three partitions: aws (Standard Regions), aws-cn (China Regions), and aws-us-gov (Amazon Web Services GovCloud [US] Regions). You can also use backup copies to clone your file dataset to another Region or within the same Region. You can use the SourceRegion parameter to specify the Amazon Web Services Region from which the backup will be copied. For example, if you make the call from the us-west-1 Region and want to copy a backup from the us-east-2 Region, you specify us-east-2 in the SourceRegion parameter to make a cross-Region copy. If you don't specify a Region, the backup copy is created in the same Region where the request is sent from (in-Region copy). For more information about creating backup copies, see [ Copying backups](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#copy-backups) in the Amazon FSx for Windows User Guide, [Copying backups](https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html#copy-backups) in the Amazon FSx for Lustre User Guide, and [Copying backups](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html#copy-backups) in the Amazon FSx for OpenZFS User Guide.
    func copyBackup(input: CopyBackupInput) async throws -> CopyBackupOutputResponse
    /// Creates a backup of an existing Amazon FSx for Windows File Server file system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP volume, or Amazon FSx for OpenZFS file system. We recommend creating regular backups so that you can restore a file system or volume from a backup if an issue arises with the original file system or volume. For Amazon FSx for Lustre file systems, you can create a backup only for file systems that have the following configuration:
    ///
    /// * A Persistent deployment type
    ///
    /// * Are not linked to a data repository
    ///
    ///
    /// For more information about backups, see the following:
    ///
    /// * For Amazon FSx for Lustre, see [Working with FSx for Lustre backups](https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html).
    ///
    /// * For Amazon FSx for Windows, see [Working with FSx for Windows backups](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html).
    ///
    /// * For Amazon FSx for NetApp ONTAP, see [Working with FSx for NetApp ONTAP backups](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/using-backups.html).
    ///
    /// * For Amazon FSx for OpenZFS, see [Working with FSx for OpenZFS backups](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html).
    ///
    ///
    /// If a backup with the specified client request token exists and the parameters match, this operation returns the description of the existing backup. If a backup with the specified client request token exists and the parameters don't match, this operation returns IncompatibleParameterError. If a backup with the specified client request token doesn't exist, CreateBackup does the following:
    ///
    /// * Creates a new Amazon FSx backup with an assigned ID, and an initial lifecycle state of CREATING.
    ///
    /// * Returns the description of the backup.
    ///
    ///
    /// By using the idempotent operation, you can retry a CreateBackup operation without the risk of creating an extra backup. This approach can be useful when an initial call fails in a way that makes it unclear whether a backup was created. If you use the same client request token and the initial call created a backup, the operation returns a successful result because all the parameters are the same. The CreateBackup operation returns while the backup's lifecycle state is still CREATING. You can check the backup creation status by calling the [DescribeBackups](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeBackups.html) operation, which returns the backup state along with other information.
    func createBackup(input: CreateBackupInput) async throws -> CreateBackupOutputResponse
    /// Creates an Amazon FSx for Lustre data repository association (DRA). A data repository association is a link between a directory on the file system and an Amazon S3 bucket or prefix. You can have a maximum of 8 data repository associations on a file system. Data repository associations are supported only for file systems with the Persistent_2 deployment type. Each data repository association must have a unique Amazon FSx file system directory and a unique S3 bucket or prefix associated with it. You can configure a data repository association for automatic import only, for automatic export only, or for both. To learn more about linking a data repository to your file system, see [Linking your file system to an S3 bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).
    func createDataRepositoryAssociation(input: CreateDataRepositoryAssociationInput) async throws -> CreateDataRepositoryAssociationOutputResponse
    /// Creates an Amazon FSx for Lustre data repository task. You use data repository tasks to perform bulk operations between your Amazon FSx file system and its linked data repositories. An example of a data repository task is exporting any data and metadata changes, including POSIX metadata, to files, directories, and symbolic links (symlinks) from your FSx file system to a linked data repository. A CreateDataRepositoryTask operation will fail if a data repository is not linked to the FSx file system. To learn more about data repository tasks, see [Data Repository Tasks](https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html). To learn more about linking a data repository to your file system, see [Linking your file system to an S3 bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).
    func createDataRepositoryTask(input: CreateDataRepositoryTaskInput) async throws -> CreateDataRepositoryTaskOutputResponse
    /// Creates a new, empty Amazon FSx file system. You can create the following supported Amazon FSx file systems using the CreateFileSystem API operation:
    ///
    /// * Amazon FSx for Lustre
    ///
    /// * Amazon FSx for NetApp ONTAP
    ///
    /// * Amazon FSx for Windows File Server
    ///
    ///
    /// This operation requires a client request token in the request that Amazon FSx uses to ensure idempotent creation. This means that calling the operation multiple times with the same client request token has no effect. By using the idempotent operation, you can retry a CreateFileSystem operation without the risk of creating an extra file system. This approach can be useful when an initial call fails in a way that makes it unclear whether a file system was created. Examples are if a transport level timeout occurred, or your connection was reset. If you use the same client request token and the initial call created a file system, the client receives success as long as the parameters are the same. If a file system with the specified client request token exists and the parameters match, CreateFileSystem returns the description of the existing file system. If a file system with the specified client request token exists and the parameters don't match, this call returns IncompatibleParameterError. If a file system with the specified client request token doesn't exist, CreateFileSystem does the following:
    ///
    /// * Creates a new, empty Amazon FSx file system with an assigned ID, and an initial lifecycle state of CREATING.
    ///
    /// * Returns the description of the file system.
    ///
    ///
    /// This operation requires a client request token in the request that Amazon FSx uses to ensure idempotent creation. This means that calling the operation multiple times with the same client request token has no effect. By using the idempotent operation, you can retry a CreateFileSystem operation without the risk of creating an extra file system. This approach can be useful when an initial call fails in a way that makes it unclear whether a file system was created. Examples are if a transport-level timeout occurred, or your connection was reset. If you use the same client request token and the initial call created a file system, the client receives a success message as long as the parameters are the same. The CreateFileSystem call returns while the file system's lifecycle state is still CREATING. You can check the file-system creation status by calling the [DescribeFileSystems](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html) operation, which returns the file system state along with other information.
    func createFileSystem(input: CreateFileSystemInput) async throws -> CreateFileSystemOutputResponse
    /// Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File Server, or Amazon FSx for OpenZFS file system from an existing Amazon FSx backup. If a file system with the specified client request token exists and the parameters match, this operation returns the description of the file system. If a client request token with the specified by the file system exists and the parameters don't match, this call returns IncompatibleParameterError. If a file system with the specified client request token doesn't exist, this operation does the following:
    ///
    /// * Creates a new Amazon FSx file system from backup with an assigned ID, and an initial lifecycle state of CREATING.
    ///
    /// * Returns the description of the file system.
    ///
    ///
    /// Parameters like the Active Directory, default share name, automatic backup, and backup settings default to the parameters of the file system that was backed up, unless overridden. You can explicitly supply other settings. By using the idempotent operation, you can retry a CreateFileSystemFromBackup call without the risk of creating an extra file system. This approach can be useful when an initial call fails in a way that makes it unclear whether a file system was created. Examples are if a transport level timeout occurred, or your connection was reset. If you use the same client request token and the initial call created a file system, the client receives a success message as long as the parameters are the same. The CreateFileSystemFromBackup call returns while the file system's lifecycle state is still CREATING. You can check the file-system creation status by calling the [ DescribeFileSystems](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html) operation, which returns the file system state along with other information.
    func createFileSystemFromBackup(input: CreateFileSystemFromBackupInput) async throws -> CreateFileSystemFromBackupOutputResponse
    /// Creates a snapshot of an existing Amazon FSx for OpenZFS file system. With snapshots, you can easily undo file changes and compare file versions by restoring the volume to a previous version. If a snapshot with the specified client request token exists, and the parameters match, this operation returns the description of the existing snapshot. If a snapshot with the specified client request token exists, and the parameters don't match, this operation returns IncompatibleParameterError. If a snapshot with the specified client request token doesn't exist, CreateSnapshot does the following:
    ///
    /// * Creates a new OpenZFS snapshot with an assigned ID, and an initial lifecycle state of CREATING.
    ///
    /// * Returns the description of the snapshot.
    ///
    ///
    /// By using the idempotent operation, you can retry a CreateSnapshot operation without the risk of creating an extra snapshot. This approach can be useful when an initial call fails in a way that makes it unclear whether a snapshot was created. If you use the same client request token and the initial call created a snapshot, the operation returns a successful result because all the parameters are the same. The CreateSnapshot operation returns while the snapshot's lifecycle state is still CREATING. You can check the snapshot creation status by calling the [DescribeSnapshots](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeSnapshots.html) operation, which returns the snapshot state along with other information.
    func createSnapshot(input: CreateSnapshotInput) async throws -> CreateSnapshotOutputResponse
    /// Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP file system.
    func createStorageVirtualMachine(input: CreateStorageVirtualMachineInput) async throws -> CreateStorageVirtualMachineOutputResponse
    /// Creates an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS storage volume.
    func createVolume(input: CreateVolumeInput) async throws -> CreateVolumeOutputResponse
    /// Creates a new Amazon FSx for NetApp ONTAP volume from an existing Amazon FSx volume backup.
    func createVolumeFromBackup(input: CreateVolumeFromBackupInput) async throws -> CreateVolumeFromBackupOutputResponse
    /// Deletes an Amazon FSx backup. After deletion, the backup no longer exists, and its data is gone. The DeleteBackup call returns instantly. The backup won't show up in later DescribeBackups calls. The data in a deleted backup is also deleted and can't be recovered by any means.
    func deleteBackup(input: DeleteBackupInput) async throws -> DeleteBackupOutputResponse
    /// Deletes a data repository association on an Amazon FSx for Lustre file system. Deleting the data repository association unlinks the file system from the Amazon S3 bucket. When deleting a data repository association, you have the option of deleting the data in the file system that corresponds to the data repository association. Data repository associations are supported only for file systems with the Persistent_2 deployment type.
    func deleteDataRepositoryAssociation(input: DeleteDataRepositoryAssociationInput) async throws -> DeleteDataRepositoryAssociationOutputResponse
    /// Deletes a file system. After deletion, the file system no longer exists, and its data is gone. Any existing automatic backups and snapshots are also deleted. To delete an Amazon FSx for NetApp ONTAP file system, first delete all the volumes and storage virtual machines (SVMs) on the file system. Then provide a FileSystemId value to the DeleFileSystem operation. By default, when you delete an Amazon FSx for Windows File Server file system, a final backup is created upon deletion. This final backup isn't subject to the file system's retention policy, and must be manually deleted. The DeleteFileSystem operation returns while the file system has the DELETING status. You can check the file system deletion status by calling the [DescribeFileSystems](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html) operation, which returns a list of file systems in your account. If you pass the file system ID for a deleted file system, the DescribeFileSystems operation returns a FileSystemNotFound error. If a data repository task is in a PENDING or EXECUTING state, deleting an Amazon FSx for Lustre file system will fail with an HTTP status code 400 (Bad Request). The data in a deleted file system is also deleted and can't be recovered by any means.
    func deleteFileSystem(input: DeleteFileSystemInput) async throws -> DeleteFileSystemOutputResponse
    /// Deletes the Amazon FSx snapshot. After deletion, the snapshot no longer exists, and its data is gone. Deleting a snapshot doesn't affect snapshots stored in a file system backup. The DeleteSnapshot operation returns instantly. The snapshot appears with the lifecycle status of DELETING until the deletion is complete.
    func deleteSnapshot(input: DeleteSnapshotInput) async throws -> DeleteSnapshotOutputResponse
    /// Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM). Prior to deleting an SVM, you must delete all non-root volumes in the SVM, otherwise the operation will fail.
    func deleteStorageVirtualMachine(input: DeleteStorageVirtualMachineInput) async throws -> DeleteStorageVirtualMachineOutputResponse
    /// Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume.
    func deleteVolume(input: DeleteVolumeInput) async throws -> DeleteVolumeOutputResponse
    /// Returns the description of a specific Amazon FSx backup, if a BackupIds value is provided for that backup. Otherwise, it returns all backups owned by your Amazon Web Services account in the Amazon Web Services Region of the endpoint that you're calling. When retrieving all backups, you can optionally specify the MaxResults parameter to limit the number of backups in a response. If more backups remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of the NextToken value from the last response. This operation is used in an iterative process to retrieve a list of your backups. DescribeBackups is called first without a NextToken value. Then the operation continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken value. When using this operation, keep the following in mind:
    ///
    /// * The operation might return fewer than the MaxResults value of backup descriptions while still including a NextToken value.
    ///
    /// * The order of the backups returned in the response of one DescribeBackups call and the order of the backups returned across the responses of a multi-call iteration is unspecified.
    func describeBackups(input: DescribeBackupsInput) async throws -> DescribeBackupsOutputResponse
    /// Returns the description of specific Amazon FSx for Lustre data repository associations, if one or more AssociationIds values are provided in the request, or if filters are used in the request. Data repository associations are supported only for file systems with the Persistent_2 deployment type. You can use filters to narrow the response to include just data repository associations for specific file systems (use the file-system-id filter with the ID of the file system) or data repository associations for a specific repository type (use the data-repository-type filter with a value of S3). If you don't use filters, the response returns all data repository associations owned by your Amazon Web Services account in the Amazon Web Services Region of the endpoint that you're calling. When retrieving all data repository associations, you can paginate the response by using the optional MaxResults parameter to limit the number of data repository associations returned in a response. If more data repository associations remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response.
    func describeDataRepositoryAssociations(input: DescribeDataRepositoryAssociationsInput) async throws -> DescribeDataRepositoryAssociationsOutputResponse
    /// Returns the description of specific Amazon FSx for Lustre data repository tasks, if one or more TaskIds values are provided in the request, or if filters are used in the request. You can use filters to narrow the response to include just tasks for specific file systems, or tasks in a specific lifecycle state. Otherwise, it returns all data repository tasks owned by your Amazon Web Services account in the Amazon Web Services Region of the endpoint that you're calling. When retrieving all tasks, you can paginate the response by using the optional MaxResults parameter to limit the number of tasks returned in a response. If more tasks remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response.
    func describeDataRepositoryTasks(input: DescribeDataRepositoryTasksInput) async throws -> DescribeDataRepositoryTasksOutputResponse
    /// Returns the DNS aliases that are associated with the specified Amazon FSx for Windows File Server file system. A history of all DNS aliases that have been associated with and disassociated from the file system is available in the list of [AdministrativeAction] provided in the [DescribeFileSystems] operation response.
    func describeFileSystemAliases(input: DescribeFileSystemAliasesInput) async throws -> DescribeFileSystemAliasesOutputResponse
    /// Returns the description of specific Amazon FSx file systems, if a FileSystemIds value is provided for that file system. Otherwise, it returns descriptions of all file systems owned by your Amazon Web Services account in the Amazon Web Services Region of the endpoint that you're calling. When retrieving all file system descriptions, you can optionally specify the MaxResults parameter to limit the number of descriptions in a response. If more file system descriptions remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This operation is used in an iterative process to retrieve a list of your file system descriptions. DescribeFileSystems is called first without a NextTokenvalue. Then the operation continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this operation, keep the following in mind:
    ///
    /// * The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.
    ///
    /// * The order of file systems returned in the response of one DescribeFileSystems call and the order of file systems returned across the responses of a multicall iteration is unspecified.
    func describeFileSystems(input: DescribeFileSystemsInput) async throws -> DescribeFileSystemsOutputResponse
    /// Returns the description of specific Amazon FSx snapshots, if a SnapshotIds value is provided. Otherwise, this operation returns all snapshots owned by your Amazon Web Services account in the Amazon Web Services Region of the endpoint that you're calling. When retrieving all snapshots, you can optionally specify the MaxResults parameter to limit the number of snapshots in a response. If more backups remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. Use this operation in an iterative process to retrieve a list of your snapshots. DescribeSnapshots is called first without a NextToken value. Then the operation continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken value. When using this operation, keep the following in mind:
    ///
    /// * The operation might return fewer than the MaxResults value of snapshot descriptions while still including a NextToken value.
    ///
    /// * The order of snapshots returned in the response of one DescribeSnapshots call and the order of backups returned across the responses of a multi-call iteration is unspecified.
    func describeSnapshots(input: DescribeSnapshotsInput) async throws -> DescribeSnapshotsOutputResponse
    /// Describes one or more Amazon FSx for NetApp ONTAP storage virtual machines (SVMs).
    func describeStorageVirtualMachines(input: DescribeStorageVirtualMachinesInput) async throws -> DescribeStorageVirtualMachinesOutputResponse
    /// Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volumes.
    func describeVolumes(input: DescribeVolumesInput) async throws -> DescribeVolumesOutputResponse
    /// Use this action to disassociate, or remove, one or more Domain Name Service (DNS) aliases from an Amazon FSx for Windows File Server file system. If you attempt to disassociate a DNS alias that is not associated with the file system, Amazon FSx responds with a 400 Bad Request. For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html). The system generated response showing the DNS aliases that Amazon FSx is attempting to disassociate from the file system. Use the API operation to monitor the status of the aliases Amazon FSx is disassociating with the file system.
    func disassociateFileSystemAliases(input: DisassociateFileSystemAliasesInput) async throws -> DisassociateFileSystemAliasesOutputResponse
    /// Lists tags for an Amazon FSx file systems and backups in the case of Amazon FSx for Windows File Server. When retrieving all tags, you can optionally specify the MaxResults parameter to limit the number of tags in a response. If more tags remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This action is used in an iterative process to retrieve a list of your tags. ListTagsForResource is called first without a NextTokenvalue. Then the action continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this action, keep the following in mind:
    ///
    /// * The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.
    ///
    /// * The order of tags returned in the response of one ListTagsForResource call and the order of tags returned across the responses of a multi-call iteration is unspecified.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Releases the file system lock from an Amazon FSx for OpenZFS file system.
    func releaseFileSystemNfsV3Locks(input: ReleaseFileSystemNfsV3LocksInput) async throws -> ReleaseFileSystemNfsV3LocksOutputResponse
    /// Returns an Amazon FSx for OpenZFS volume to the state saved by the specified snapshot.
    func restoreVolumeFromSnapshot(input: RestoreVolumeFromSnapshotInput) async throws -> RestoreVolumeFromSnapshotOutputResponse
    /// Tags an Amazon FSx resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// This action removes a tag from an Amazon FSx resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the configuration of an existing data repository association on an Amazon FSx for Lustre file system. Data repository associations are supported only for file systems with the Persistent_2 deployment type.
    func updateDataRepositoryAssociation(input: UpdateDataRepositoryAssociationInput) async throws -> UpdateDataRepositoryAssociationOutputResponse
    /// Use this operation to update the configuration of an existing Amazon FSx file system. You can update multiple properties in a single request. For Amazon FSx for Windows File Server file systems, you can update the following properties:
    ///
    /// * AuditLogConfiguration
    ///
    /// * AutomaticBackupRetentionDays
    ///
    /// * DailyAutomaticBackupStartTime
    ///
    /// * SelfManagedActiveDirectoryConfiguration
    ///
    /// * StorageCapacity
    ///
    /// * ThroughputCapacity
    ///
    /// * WeeklyMaintenanceStartTime
    ///
    ///
    /// For FSx for Lustre file systems, you can update the following properties:
    ///
    /// * AutoImportPolicy
    ///
    /// * AutomaticBackupRetentionDays
    ///
    /// * DailyAutomaticBackupStartTime
    ///
    /// * DataCompressionType
    ///
    /// * StorageCapacity
    ///
    /// * WeeklyMaintenanceStartTime
    ///
    ///
    /// For FSx for ONTAP file systems, you can update the following properties:
    ///
    /// * AutomaticBackupRetentionDays
    ///
    /// * DailyAutomaticBackupStartTime
    ///
    /// * FsxAdminPassword
    ///
    /// * WeeklyMaintenanceStartTime
    ///
    ///
    /// For the Amazon FSx for OpenZFS file systems, you can update the following properties:
    ///
    /// * AutomaticBackupRetentionDays
    ///
    /// * CopyTagsToBackups
    ///
    /// * CopyTagsToVolumes
    ///
    /// * DailyAutomaticBackupStartTime
    ///
    /// * DiskIopsConfiguration
    ///
    /// * ThroughputCapacity
    ///
    /// * WeeklyMaintenanceStartTime
    func updateFileSystem(input: UpdateFileSystemInput) async throws -> UpdateFileSystemOutputResponse
    /// Updates the name of a snapshot.
    func updateSnapshot(input: UpdateSnapshotInput) async throws -> UpdateSnapshotOutputResponse
    /// Updates an Amazon FSx for ONTAP storage virtual machine (SVM).
    func updateStorageVirtualMachine(input: UpdateStorageVirtualMachineInput) async throws -> UpdateStorageVirtualMachineOutputResponse
    /// Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume.
    func updateVolume(input: UpdateVolumeInput) async throws -> UpdateVolumeOutputResponse
}

public enum FSxClientTypes {}