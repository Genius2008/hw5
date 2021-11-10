//
//  main.swift
//  HomeWork5
//
//  Created by Евгения Шуляковская on 01.11.2021.
//

import Foundation

print("Hello, World!")

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

enum CarType : String {
    case pkw = "Легковой"
    case lkw = "Грузовой"
    case nfz = "Комерческий"
    case sport = "Спортивный"
}

enum WheelDrive : String {
    case allWheelDrive = "Полный привод"
    case frontWheelDrive = "Передний привод"
    case rearWheelDrive = "Задний привод"
}

enum Transmission : String {
    case automat = "Автоматическая коробка передач"
    case manual = "Ручная коробка передач"
    case dsg = "Полуавтоматическая коробка передач"
}

enum DoorStatus : String {
    case opened = "Двери открыты"
    case closed = "Двери закрыты"
}

enum WindowsStatus : String {
    case opened = "Окна открыты"
    case closed = "Окна закрыты"
}

enum FuelTankStatus : String {
    case full = "Полный бак"
    case empty = "Пустой бак"
}

enum EngineStatus : String {
    case engineOn = "Двигатель заведен"
    case engineOff = "Двигатель заглушен"
}

enum AerodynamicBodyKit: String {
    case install = "Аэродинамический обвес"
    case originalBodyKit = "Без обвеса"
}

enum HydraulicSystem : String {
    case install = "Гилравлическая система"
    case notInstalled = "Классичская подвеска"
}


protocol Car {
    var carType: CarType { get set }
    var horsePower: Double { get set }
    var transmission: Transmission { get set }
    var wheelDrive: WheelDrive { get set }
    var doorStatus: DoorStatus { get set }
    var windowsStatus: WindowsStatus { get set }
    var fuelTankStatus: FuelTankStatus { get set }
    var engineStatus: EngineStatus { get set }


func getCarInformation ()
}


struct DefaultCar: Car {
   
    var carType: CarType
    var horsePower: Double
    var transmission: Transmission
    var wheelDrive: WheelDrive
    var doorStatus: DoorStatus
    var windowsStatus: WindowsStatus
    var fuelTankStatus: FuelTankStatus
    var engineStatus: EngineStatus
}





final class SportCar: Car {
    var carType: CarType
    
    var horsePower: Double
    
    var transmission: Transmission
    
    var wheelDrive: WheelDrive
    
    var doorStatus: DoorStatus
    
    var windowsStatus: WindowsStatus
    
    var fuelTankStatus: FuelTankStatus
    
    var engineStatus: EngineStatus
    
    private let aerodynamicBodyKit: AerodynamicBodyKit
    

    
    
    private init (carType: CarType,
         horsePower: Double,
         transmission: Transmission,
         wheelDrive: WheelDrive,
         fuelTankStatus: FuelTankStatus,
         doorStatus: DoorStatus,
         windowsStatus: WindowsStatus,
         aerodynamicBodyKit: AerodynamicBodyKit,
         engineStatus: EngineStatus)
    
    
        
        
    self.carType = CarType
    self.horsePower = Double
    self.transmission = Transmission
    self.fuelTankStatus = FuelTankStatus
    self.doorStatus = DoorStatus
    self.windowsStatus = WindowsStatus
    self.aerodynamicBodyKit = AerodynamicBodyKit
    self.engineStatus = EngineStatus
    self.wheelDrive = WheelDrive)
    }
    



final class TrunkCar: Car {
    
    var carType: CarType
    
    var horsePower: Double
    
    var transmission: Transmission
    
    var wheelDrive: WheelDrive
    
    var doorStatus: DoorStatus
    
    var windowsStatus: WindowsStatus
    
    var fuelTankStatus: FuelTankStatus
    
    var engineStatus: EngineStatus
    
    private let hydraulicSystem: HydraulicSystem
    
    
    
    private init (carType: CarType,
         horsePower: Double,
         fuelTankStatus: FuelTankStatus,
         transmission: Transmission,
         wheelDrive: WheelDrive,
         doorStatus: DoorStatus,
         windowsStatus: WindowsStatus,
         hydraulicSystem: HydraulicSystem)
    
        self.carType = CarType
        self.horsePower = Double
        self.fuelTankStatus = FuelTankStatus
        self.transmission = Transmission
        self.wheelDrive = WheelDrive
        self.doorStatus = doorStatus
        self.windowsStatus = windowsStatus
        self.hydraulicSystem = hydraulicSystem
    }
    
  



    extension Car {
        func getCarInformation() {
            print("Тип" - \carType
            "Мощность" - \horsePower
            "Привод" - \wheelDrive
            "СостояниеБака" - \fuelTankStatus
            "КоробкаПередач" - \transmission
            "СостояниеДверей" - \doorStatus
            "СостояниеОкон" - \windowsStatus
            "ГидравлическаяСистема" - \hydraulicSystem
            "АэродинамическийОбвес" - \aerodynamicBodyKit)
        }
            
           
    }
         


// MARK запуск автомобиля


