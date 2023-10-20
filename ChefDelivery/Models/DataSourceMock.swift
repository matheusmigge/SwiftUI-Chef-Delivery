//
//  DataSourceMock.swift
//  ChefDelivery
//
//  Created by Migge on 18/10/23.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurantes", image: "hamburguer"),
    OrderType(id: 2, name: "Mercado", image: "mercado"),
    OrderType(id: 3, name: "Farmácia", image: "farmacia"),
    OrderType(id: 4, name: "Pet", image: "petshop"),
    OrderType(id: 5, name: "Descontos", image: "descontos"),
    OrderType(id: 6, name: "Bebidas", image: "bebidas"),
    OrderType(id: 7, name: "Gourmert", image: "gourmet") 
]

let carouselsMock: [Banner] = [
    Banner(id: 1, image: "barbecue-banner"),
    Banner(id: 2, image: "brazilian-meal-banner"),
    Banner(id: 3, image: "pokes-banner")
]

let storesMock: [Store] = [
    Store(id: 1, name: "Açaí Panda", image: "acai-panda-logo", category: "Fitness"),
    Store(id: 2, name: "Bakery", image: "bakery-logo", category: "Padaria"),
    Store(id: 3, name: "Carbrón", image: "carbron-logo", category: "Comida Mexicana"),
    Store(id: 4, name: "Food Court", image: "food-court-logo", category: "Lanchonete"),
    Store(id: 5, name: "Monstro Burger", image: "monstro-burger-logo", category: "Hambúrguer")
]
