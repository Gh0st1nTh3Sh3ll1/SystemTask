# SystemTask
The File System task performs operations on files and directories in the file system. For example, by using the File System task, a package can create, move, or delete directories and files. You can also use the File System task to set attributes on files and directories. For example, the File System task can make files hidden or read-only.

All File System task operations use a source, which can be a file or a directory. For example, the file that the task copies or the directory it deletes is a source. The source can be specified by using a File connection manager that points to the directory or file or by providing the name of a variable that contains the source path. For more information, see File Connection Manager and Integration Services (SSIS) Variables.

The operations that copy and move file and directories and rename files use a destination and a source. The destination is specified by using a File connection manager or a variable. File system task operations can be configured to permit overwriting of destination files and directories. The operation that creates a new directory can be configured to use an existing directory that has the specified name instead of failing when the directory already exists.
Predefined File System Operations

The File System task includes a predefined set of operations. The following table describes these operations.
