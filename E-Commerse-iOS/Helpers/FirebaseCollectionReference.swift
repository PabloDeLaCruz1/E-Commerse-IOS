//
//  FirebaseCollectionReference.swift
//  E-Commerse-iOS
//
//  Created by Pablo De La Cruz on 3/2/22.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference : String{
    case User
    case Category
    case Items
    case Basket
}

func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference{
    return Firestore.firestore().collection(collectionReference.rawValue)
}
