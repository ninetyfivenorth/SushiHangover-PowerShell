Function Test-32Bit
{
    <#
    .Synopsis
    Determines whether the computer has a 32-bit processor architecture.

    .Description
    The Test-32Bit function returns TRUE if the computer has a 32-bit processor
    architecture and FALSE if it does not. The function does not have any parameters.
    
    64-bit machines will return true when you run this function in a process running in 32-bit mode

    .Notes
    Test-32Bit uses the PROCESSOR_ARCHITECTURE environment variable
    ($env:PPROCESSOR_ARCHITECTURE, %PROCESSOR_ARCHITECTURE) to determine its value.

    .Example
    C:\PS> Test-32Bit
    True

    .Link
    Test-64Bit

    #>

    param()
    if($env:PROCESSOR_ARCHITECTURE -match '86') { $true } ELSE { $false}
}
