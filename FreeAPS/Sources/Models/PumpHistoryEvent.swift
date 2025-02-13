import Foundation

struct PumpHistoryEvent: JSON, Equatable {
    let id: String
    let type: EventType
    let timestamp: Date
    let amount: Decimal?
    let duration: Int?
    let durationMin: Int?
    let rate: Decimal?
    let temp: TempType?
    let carbInput: Int?
<<<<<<< HEAD
    var note: String? = nil
=======
    let note: String?

    init(
        id: String,
        type: EventType,
        timestamp: Date,
        amount: Decimal? = nil,
        duration: Int? = nil,
        durationMin: Int? = nil,
        rate: Decimal? = nil,
        temp: TempType? = nil,
        carbInput: Int? = nil,
        note: String? = nil
    ) {
        self.id = id
        self.type = type
        self.timestamp = timestamp
        self.amount = amount
        self.duration = duration
        self.durationMin = durationMin
        self.rate = rate
        self.temp = temp
        self.carbInput = carbInput
        self.note = note
    }
>>>>>>> ciage
}

enum EventType: String, JSON {
    case bolus = "Bolus"
    case mealBulus = "Meal Bolus"
    case correctionBolus = "Correction Bolus"
    case snackBolus = "Snack Bolus"
    case bolusWizard = "BolusWizard"
    case tempBasal = "TempBasal"
    case tempBasalDuration = "TempBasalDuration"
    case pumpSuspend = "PumpSuspend"
    case pumpResume = "PumpResume"
    case pumpAlarm = "PumpAlarm"
    case pumpBattery = "PumpBattery"

    case rewind = "Rewind"
    case prime = "Prime"
    case journalCarbs = "JournalEntryMealMarker"

    case nsTempBasal = "Temp Basal"
    case nsCarbCorrection = "Carb Correction"
    case nsTempTarget = "Temporary Target"
<<<<<<< HEAD
=======
    case nsInsulinChange = "Insulin Change"
    case nsSiteChange = "Site Change"
    case nsBatteryChange = "Pump Battery Change"
    case nsAnnouncement = "Announcement"
>>>>>>> ciage
    case nsSensorChange = "Sensor Start"
}

enum TempType: String, JSON {
    case absolute
    case percent
}

extension PumpHistoryEvent {
    private enum CodingKeys: String, CodingKey {
        case id
        case type = "_type"
        case timestamp
        case amount
        case duration
        case durationMin = "duration (min)"
        case rate
        case temp
        case carbInput = "carb_input"
        case note
    }
}
