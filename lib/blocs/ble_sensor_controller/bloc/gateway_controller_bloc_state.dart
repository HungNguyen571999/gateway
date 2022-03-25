part of 'gateway_controller_bloc.dart';

abstract class GatewayControllerState extends Equatable {
  GatewayControllerState();

  @override
  List<Object> get props => [];
}

class GatewayCheckUploading extends GatewayControllerState {}

class GatewayCheckUploadedSuccessful extends GatewayControllerState {}

class BleSensorControllerInitial extends GatewayControllerState {}

// class BleSensorControllerValidState extends GatewayControllerState {
//   final HexoState hexoState;

//   BleSensorControllerValidState(this.hexoState);

//   @override
//   List<Object> get props => [hexoState];
// }

class GatewayNoMotionDetected extends GatewayControllerState {}

class BleSensorControllerInValidState extends GatewayControllerState {
  final SensorType sensorTypeLocation;
  final String mess;

  BleSensorControllerInValidState(this.sensorTypeLocation, this.mess);

  @override
  List<Object> get props => [sensorTypeLocation, mess];
}