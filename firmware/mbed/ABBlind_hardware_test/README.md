Hardware Test firmware - mbed
-----------

This is a copy of the mbed sources that are also shared in the [mbed developer site](Sources available at: https://developer.mbed.org/users/def/code/ABBlind_hardware_test/).

This code requires the [PinDetect library](http://developer.mbed.org/users/xeta05/code/PinDetect/#cb6051b90a52).

# Programming Seeeduino Arch on Windows, Linux or Mac

Seeeduino Arch doesn't have an mbed interface. It uses USB In-System-Programming(ISP) to upgrade the firmware.

To enter the USB ISP mode, connect the Arch with your computer and long press its button, and then a disk named "CRP DISABLD" will appear.

* On windows

  1.  delete firmware.bin in the "CRP DISABLD" disk.
  2.  copy a new firmware into the disk.

* On linux

    1. if the disk is not mounted, mount the disk at {mnt_dir}
    2. Run:

            dd if={new_firmware.bin} of={mnt_dir}/firmware.bin conv=notrunc

* On mac you'll need to use Terminal to run the following script to copy you're .bin file to your Arch

        dd if={new_firmare.bin} of=/Volumes/CRP\ DISABLD/firmware.bin conv=notrunc

    If you're so inclined, you can also create an Automator application to support drag-and-drop of the file to your board. Just create a "Run Shell Script" with the following command:

        dd if=$* of=/Volumes/CRP\ DISABLD/firmware.bin conv=notrunc

    You will also need to change the "Pass Input" option from "to stdin" to "as arguments"--without this you will get an error "The action 'Run Shell Script' encountered an error" or "dd: no value specified for if (1)" in the log. 
    Also, an improved form of the script is:

        dd if="${1}" of=/Volumes/CRP\ DISABLD/firmware.bin conv=notrunc

    Which should handle spaces in the file path and only uses the first file supplied.

Very quick press the button to run the new firmware.

Source: http://www.seeedstudio.com/wiki/Seeeduino_Arch