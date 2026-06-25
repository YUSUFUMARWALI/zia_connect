import 'package:cloud_firestore/cloud_firestore.dart';

enum FlightStatus { onTime, boarding, delayed, landed, cancelled }

extension FlightStatusExtension on FlightStatus {
  String get label {
    switch (this) {
      case FlightStatus.onTime:
        return 'On Time';
      case FlightStatus.boarding:
        return 'Boarding';
      case FlightStatus.delayed:
        return 'Delayed';
      case FlightStatus.landed:
        return 'Landed';
      case FlightStatus.cancelled:
        return 'Cancelled';
    }
  }

  static FlightStatus fromString(String value) {
    switch (value.toLowerCase()) {
      case 'boarding':
        return FlightStatus.boarding;
      case 'delayed':
        return FlightStatus.delayed;
      case 'landed':
        return FlightStatus.landed;
      case 'cancelled':
        return FlightStatus.cancelled;
      default:
        return FlightStatus.onTime;
    }
  }
}

class FlightModel {
  final String id;
  final String airline;
  final String flightNumber;
  final String origin;
  final String destination;
  final String departureTime;
  final String arrivalTime;
  final String gate;
  final String terminal;
  final FlightStatus status;
  final String aircraftType;
  final DateTime? scheduledDate;

  const FlightModel({
    required this.id,
    required this.airline,
    required this.flightNumber,
    required this.origin,
    required this.destination,
    required this.departureTime,
    required this.arrivalTime,
    required this.gate,
    required this.terminal,
    required this.status,
    required this.aircraftType,
    this.scheduledDate,
  });

  factory FlightModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    return FlightModel(
      id: doc.id,
      airline: data['airline'] ?? '',
      flightNumber: data['flightNumber'] ?? '',
      origin: data['origin'] ?? '',
      destination: data['destination'] ?? '',
      departureTime: data['departureTime'] ?? '',
      arrivalTime: data['arrivalTime'] ?? '',
      gate: data['gate'] ?? '',
      terminal: data['terminal'] ?? '',
      status: FlightStatusExtension.fromString(data['status'] ?? 'onTime'),
      aircraftType: data['aircraftType'] ?? '',
      scheduledDate: (data['scheduledDate'] as Timestamp?)?.toDate(),
    );
  }

  Map<String, dynamic> toMap() => {
        'airline': airline,
        'flightNumber': flightNumber,
        'origin': origin,
        'destination': destination,
        'departureTime': departureTime,
        'arrivalTime': arrivalTime,
        'gate': gate,
        'terminal': terminal,
        'status': status.name,
        'aircraftType': aircraftType,
        'scheduledDate':
            scheduledDate != null ? Timestamp.fromDate(scheduledDate!) : null,
      };

  static List<FlightModel> get sampleFlights => [
        const FlightModel(
          id: '1',
          airline: 'Air Peace',
          flightNumber: 'P4 201',
          origin: 'ZIA',
          destination: 'ABV',
          departureTime: '06:30',
          arrivalTime: '08:00',
          gate: 'A1',
          terminal: 'Terminal 1',
          status: FlightStatus.onTime,
          aircraftType: 'Boeing 737',
        ),
        const FlightModel(
          id: '2',
          airline: 'Arik Air',
          flightNumber: 'W3 305',
          origin: 'LOS',
          destination: 'ZIA',
          departureTime: '09:15',
          arrivalTime: '10:45',
          gate: 'B2',
          terminal: 'Terminal 1',
          status: FlightStatus.boarding,
          aircraftType: 'Airbus A320',
        ),
        const FlightModel(
          id: '3',
          airline: 'Overland Airways',
          flightNumber: 'OL 102',
          origin: 'ZIA',
          destination: 'KAN',
          departureTime: '11:00',
          arrivalTime: '11:55',
          gate: 'A3',
          terminal: 'Terminal 1',
          status: FlightStatus.delayed,
          aircraftType: 'ATR 72',
        ),
        const FlightModel(
          id: '4',
          airline: 'Dana Air',
          flightNumber: 'DA 450',
          origin: 'ABV',
          destination: 'ZIA',
          departureTime: '13:30',
          arrivalTime: '14:30',
          gate: 'B1',
          terminal: 'Terminal 1',
          status: FlightStatus.landed,
          aircraftType: 'MD-83',
        ),
        const FlightModel(
          id: '5',
          airline: 'Ethiopian Airlines',
          flightNumber: 'ET 911',
          origin: 'ZIA',
          destination: 'ADD',
          departureTime: '16:00',
          arrivalTime: '19:30',
          gate: 'C1',
          terminal: 'International',
          status: FlightStatus.onTime,
          aircraftType: 'Boeing 787',
        ),
      ];
}
