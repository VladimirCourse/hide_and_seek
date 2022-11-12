package com.vls.hide_and_seek

import androidx.annotation.NonNull

import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothGatt
import android.bluetooth.BluetoothGattCharacteristic
import android.bluetooth.BluetoothGattDescriptor
import android.bluetooth.BluetoothGattServer
import android.bluetooth.BluetoothGattServerCallback
import android.bluetooth.BluetoothManager
import android.bluetooth.BluetoothProfile
import android.bluetooth.le.AdvertiseCallback
import android.bluetooth.le.AdvertiseData
import android.bluetooth.le.AdvertiseSettings
import android.bluetooth.le.BluetoothLeAdvertiser

import android.content.Context

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

import android.os.ParcelUuid

import java.util.UUID

class MainActivity: FlutterActivity() {

    // private val CHANNEL = "hide_and_seek/GATT"
    

    // private var bluetoothGattServer: BluetoothGattServer? = null
    // private var bluetoothManager: BluetoothManager? = null

    // override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    //     super.configureFlutterEngine(flutterEngine)

    //     bluetoothManager = getSystemService(Context.BLUETOOTH_SERVICE) as BluetoothManager

    //     MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
    //         call, result ->
    //         if (call.method == "startServer") {

    //             val bluetoothLeAdvertiser: BluetoothLeAdvertiser? =
    //                 bluetoothManager?.adapter?.bluetoothLeAdvertiser

    //             bluetoothLeAdvertiser?.let {
    //                 val settings = AdvertiseSettings.Builder()
    //                         .setAdvertiseMode(AdvertiseSettings.ADVERTISE_MODE_BALANCED)
    //                         .setConnectable(true)
    //                         .setTimeout(0)
    //                         .setTxPowerLevel(AdvertiseSettings.ADVERTISE_TX_POWER_MEDIUM)
    //                         .build()

    //                 val data = AdvertiseData.Builder()
    //                         .setIncludeDeviceName(true)
    //                         .setIncludeTxPowerLevel(false)
    //                         .addServiceUuid(ParcelUuid(UUID.fromString("00001805-0000-1000-8000-0080bacacaca")))
    //                         .build()

    //                 it.startAdvertising(settings, data, advertiseCallback)
    //             }

    //             // bluetoothGattServer = bluetoothManager?.openGattServer(this, gattServerCallback)
    //             // bluetoothGattServer?.addService(TimeProfile.createTimeService())
    //         } else  if (call.method == "stopServer") {
    //             bluetoothGattServer?.close()
    //             val bluetoothLeAdvertiser: BluetoothLeAdvertiser? =
    //                 bluetoothManager?.adapter?.bluetoothLeAdvertiser
    //                 bluetoothLeAdvertiser?.let {
    //                     it.stopAdvertising(advertiseCallback)
    //                 }
    //         } else {
    //             result.notImplemented()
    //         }
    //     }
    // }

    //  private val advertiseCallback = object : AdvertiseCallback() {
    //     override fun onStartSuccess(settingsInEffect: AdvertiseSettings) {
    //     }

    //     override fun onStartFailure(errorCode: Int) {
    //     }
    // }

    // private val gattServerCallback = object : BluetoothGattServerCallback() {

    //     override fun onConnectionStateChange(device: BluetoothDevice, status: Int, newState: Int) {
          
    //     }

    //     override fun onCharacteristicReadRequest(device: BluetoothDevice, 
    //                                             requestId: Int, 
    //                                             offset: Int,
    //                                             characteristic: BluetoothGattCharacteristic) {
          
            
    //     }

    //     override fun onDescriptorReadRequest(device: BluetoothDevice, requestId: Int, offset: Int,
    //                                          descriptor: BluetoothGattDescriptor) {
           
    //     }

    //     override fun onDescriptorWriteRequest(device: BluetoothDevice, requestId: Int,
    //                                           descriptor: BluetoothGattDescriptor,
    //                                           preparedWrite: Boolean, responseNeeded: Boolean,
    //                                           offset: Int, value: ByteArray) {
           
    //     }
    // }
}
