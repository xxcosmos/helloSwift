//
//  FakeData.swift
//  helloSwift
//
//  Created by 张啸宇 on 2019/12/8.
//  Copyright © 2019 xiaoyuu. All rights reserved.
//

import Foundation

class FakeData {
    private static var bannerList = [String]()
    private static var products = [Product]()
    private static var deals = [Deal]()
    
    static func createBanners() -> [String]{
        if bannerList.count == 0 {
            bannerList = ["https://static001.geekbang.org/resource/image/8b/c1/8b4de3c309a5b5ca3a75d91325e64dc1.jpg?x-oss-process=image/resize,m_fill,h_108,w_82",
            "https://static001.geekbang.org/resource/image/f3/f6/f3abb28a927bf207332f7ce41c5e3bf6.png?x-oss-process=image/resize,m_fill,h_108,w_82",
            "https://static001.geekbang.org/resource/image/2d/12/2d5e1c53fd7aa2a8f7663db0dae0ee12.jpg?x-oss-process=image/resize,m_fill,h_108,w_82"
            ]
        }
        return bannerList
    }
    
    static func createProducts() -> [Product]{
        if products.count == 0 {
            let p1 = Product(imageUrl: "https://static001.geekbang.org/resource/image/49/61/4956da8717dec9a634c52a6e644c9461.jpg?x-oss-process=image/resize,m_fill,h_108,w_82", name: "玩转Spring全家桶", price: 129, desc: "一站通关Spring、Spring Boot与Spring Cloud", teacher: "丁雪丰", total: 123, update: 111, student: 24496, detail: "dddddddddd", courseList: "dddd")
            let p2 = Product(imageUrl: "https://static001.geekbang.org/resource/image/b6/6a/b6bf3f9c60f5e275406f23d5b36e816a.jpg", name: "算法面试通关40讲", price: 129, desc: "前Facebook工程师带你吃透大厂面试题", teacher: "覃超", total: 52, update: 22, student: 18678, detail: "dddddddddd", courseList: "dddd")
            let p3 = Product(imageUrl: "https://static001.geekbang.org/resource/image/86/89/86a168674f3ff4b795f073513b09e989.jpg?x-oss-process=image/resize,m_fill,h_108,w_82", name: "Nginx核心知识100讲", price: 129, desc: "百万并发下的Nginx性能优化之道", teacher: "陶辉", total: 155, update: 33, student: 18438, detail: "dddddddddd", courseList: "dddd")
            products = [p1,p2,p3]
        }
        return products
    }
    
    static func createDeals() -> [Deal] {
        if deals.count == 0 {
            deals = FakeData.createProducts().map {
                Deal(product: $0, progress: 1)
            }
        }
        return deals
    }
}
