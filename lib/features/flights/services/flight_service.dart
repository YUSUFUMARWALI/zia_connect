import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/flight_model.dart';

class FlightService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<FlightModel>> getFlights() {
    return _firestore
        .collection('flights')
        .orderBy('departureTime')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => FlightModel.fromFirestore(doc))
              .toList(),
        );
  }

  Future<void> seedSampleFlights() async {
    final batch = _firestore.batch();

    for (final flight in FlightModel.sampleFlights) {
      final ref = _firestore.collection('flights').doc(flight.id);
      batch.set(ref, flight.toMap());
    }

    await batch.commit();
  }
}
