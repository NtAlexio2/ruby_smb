module RubySMB
  module SMB1
    module Packet
      # SMB Find Information Levels as defined in
      # [2.2.8.1 FIND Information Levels](https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-cifs/635a88d2-4352-41f2-8b9a-1ed7c1997f7f)
      module FindInfo
        # Constants defined in
        # [2.2.2.3.1 FIND Information Level Codes](https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-cifs/f5dcd594-1c46-4bc6-963f-581a4c78ea99)
        # [dialect] description

        # [LANMAN2.0] Return creation, access, and last write timestamps, size and file attributes along with the file name.
        SMB_INFO_STANDARD                 = 0x0001 # 1

        # [LANMAN2.0] Return the SMB_INFO_STANDARD data along with the size of a file's extended attributes (EAs).
        SMB_INFO_QUERY_EA_SIZE            = 0x0002 # 2

        # [LANMAN2.0] Return the SMB_INFO_QUERY_EA_SIZE data along with a specific list of a file's EAs. The requested EAs are provided in the Trans2_Data block of the request.
        SMB_INFO_QUERY_EAS_FROM_LIST      = 0x0003 # 3

        # [NT LANMAN] Return 64-bit format versions of: creation, access, last write, and last attribute change timestamps; size. In addition, return extended file attributes and file name.
        SMB_FIND_FILE_DIRECTORY_INFO      = 0x0101 # 257

        # [NT LANMAN] Returns the SMB_FIND_FILE_DIRECTORY_INFO data along with the size of a file's EAs.
        SMB_FIND_FILE_FULL_DIRECTORY_INFO = 0x0102 # 258

        # [NT LANMAN] Returns the name(s) of the file(s).
        SMB_FIND_FILE_NAMES_INFO          = 0x0103 # 259

        # [NT LANMAN] Returns a combination of the data from SMB_FIND_FILE_FULL_DIRECTORY_INFO and SMB_FIND_FILE_NAMES_INFO.
        SMB_FIND_FILE_BOTH_DIRECTORY_INFO = 0x0104 # 260
      end
    end
  end
end
